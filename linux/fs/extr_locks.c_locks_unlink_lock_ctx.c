
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_list; } ;


 int list_del_init (int *) ;
 int locks_delete_global_locks (struct file_lock*) ;
 int locks_wake_up_blocks (struct file_lock*) ;

__attribute__((used)) static void
locks_unlink_lock_ctx(struct file_lock *fl)
{
 locks_delete_global_locks(fl);
 list_del_init(&fl->fl_list);
 locks_wake_up_blocks(fl);
}
