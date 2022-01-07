
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {scalar_t__ data; scalar_t__ name; scalar_t__ inline_name; int mode; } ;


 scalar_t__ S_ISLNK (int ) ;
 int kfree (scalar_t__) ;
 int kmem_cache_free (int ,struct proc_dir_entry*) ;
 int proc_dir_entry_cache ;

void pde_free(struct proc_dir_entry *pde)
{
 if (S_ISLNK(pde->mode))
  kfree(pde->data);
 if (pde->name != pde->inline_name)
  kfree(pde->name);
 kmem_cache_free(proc_dir_entry_cache, pde);
}
