
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; struct mm_struct* vm_mm; struct file* vm_file; } ;
struct mm_struct {int ioctx_lock; int ioctx_table; } ;
struct kioctx_table {int nr; int * table; } ;
struct kioctx {int mmap_base; int user_id; int dead; struct file* aio_ring_file; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int atomic_read (int *) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int aio_ring_mremap(struct vm_area_struct *vma)
{
 struct file *file = vma->vm_file;
 struct mm_struct *mm = vma->vm_mm;
 struct kioctx_table *table;
 int i, res = -EINVAL;

 spin_lock(&mm->ioctx_lock);
 rcu_read_lock();
 table = rcu_dereference(mm->ioctx_table);
 for (i = 0; i < table->nr; i++) {
  struct kioctx *ctx;

  ctx = rcu_dereference(table->table[i]);
  if (ctx && ctx->aio_ring_file == file) {
   if (!atomic_read(&ctx->dead)) {
    ctx->user_id = ctx->mmap_base = vma->vm_start;
    res = 0;
   }
   break;
  }
 }

 rcu_read_unlock();
 spin_unlock(&mm->ioctx_lock);
 return res;
}
