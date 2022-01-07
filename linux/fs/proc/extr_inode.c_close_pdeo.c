
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int pde_unload_lock; TYPE_1__* proc_fops; } ;
struct pde_opener {int closing; struct completion* c; int lh; struct file* file; } ;
struct file {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int (* release ) (int ,struct file*) ;} ;


 int DECLARE_COMPLETION_ONSTACK (struct completion) ;
 struct completion c ;
 int complete (struct completion*) ;
 int file_inode (struct file*) ;
 int kmem_cache_free (int ,struct pde_opener*) ;
 int list_del (int *) ;
 int pde_opener_cache ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,struct file*) ;
 scalar_t__ unlikely (struct completion*) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static void close_pdeo(struct proc_dir_entry *pde, struct pde_opener *pdeo)
{
 if (pdeo->closing) {

  DECLARE_COMPLETION_ONSTACK(c);
  pdeo->c = &c;
  spin_unlock(&pde->pde_unload_lock);
  wait_for_completion(&c);
 } else {
  struct file *file;
  struct completion *c;

  pdeo->closing = 1;
  spin_unlock(&pde->pde_unload_lock);
  file = pdeo->file;
  pde->proc_fops->release(file_inode(file), file);
  spin_lock(&pde->pde_unload_lock);

  list_del(&pdeo->lh);
  c = pdeo->c;
  spin_unlock(&pde->pde_unload_lock);
  if (unlikely(c))
   complete(c);
  kmem_cache_free(pde_opener_cache, pdeo);
 }
}
