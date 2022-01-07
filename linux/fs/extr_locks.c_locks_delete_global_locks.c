
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock_list_struct {int lock; } ;
struct file_lock {int fl_link; int fl_link_cpu; } ;


 int file_lock_list ;
 int file_rwsem ;
 int hlist_del_init (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 struct file_lock_list_struct* per_cpu_ptr (int *,int ) ;
 int percpu_rwsem_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void locks_delete_global_locks(struct file_lock *fl)
{
 struct file_lock_list_struct *fll;

 percpu_rwsem_assert_held(&file_rwsem);






 if (hlist_unhashed(&fl->fl_link))
  return;

 fll = per_cpu_ptr(&file_lock_list, fl->fl_link_cpu);
 spin_lock(&fll->lock);
 hlist_del_init(&fl->fl_link);
 spin_unlock(&fll->lock);
}
