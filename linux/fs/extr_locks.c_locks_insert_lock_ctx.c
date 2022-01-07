
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct file_lock {int fl_list; } ;


 int list_add_tail (int *,struct list_head*) ;
 int locks_insert_global_locks (struct file_lock*) ;

__attribute__((used)) static void
locks_insert_lock_ctx(struct file_lock *fl, struct list_head *before)
{
 list_add_tail(&fl->fl_list, before);
 locks_insert_global_locks(fl);
}
