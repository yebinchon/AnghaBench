
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct file_lock {int fl_list; } ;


 int list_add (int *,struct list_head*) ;
 int locks_free_lock (struct file_lock*) ;
 int locks_unlink_lock_ctx (struct file_lock*) ;

__attribute__((used)) static void
locks_delete_lock_ctx(struct file_lock *fl, struct list_head *dispose)
{
 locks_unlink_lock_ctx(fl);
 if (dispose)
  list_add(&fl->fl_list, dispose);
 else
  locks_free_lock(fl);
}
