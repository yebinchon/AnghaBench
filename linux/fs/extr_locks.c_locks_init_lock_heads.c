
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_wait; int fl_blocked_member; int fl_blocked_requests; int fl_list; int fl_link; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static void locks_init_lock_heads(struct file_lock *fl)
{
 INIT_HLIST_NODE(&fl->fl_link);
 INIT_LIST_HEAD(&fl->fl_list);
 INIT_LIST_HEAD(&fl->fl_blocked_requests);
 INIT_LIST_HEAD(&fl->fl_blocked_member);
 init_waitqueue_head(&fl->fl_wait);
}
