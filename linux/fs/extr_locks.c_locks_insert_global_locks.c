
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock_list_struct {int lock; int hlist; } ;
struct file_lock {int fl_link; int fl_link_cpu; } ;


 int file_lock_list ;
 int file_rwsem ;
 int hlist_add_head (int *,int *) ;
 int percpu_rwsem_assert_held (int *) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct file_lock_list_struct* this_cpu_ptr (int *) ;

__attribute__((used)) static void locks_insert_global_locks(struct file_lock *fl)
{
 struct file_lock_list_struct *fll = this_cpu_ptr(&file_lock_list);

 percpu_rwsem_assert_held(&file_rwsem);

 spin_lock(&fll->lock);
 fl->fl_link_cpu = smp_processor_id();
 hlist_add_head(&fl->fl_link, &fll->hlist);
 spin_unlock(&fll->lock);
}
