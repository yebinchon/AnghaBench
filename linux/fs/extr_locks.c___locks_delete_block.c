
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int * fl_blocker; int fl_blocked_member; } ;


 int list_del_init (int *) ;
 int locks_delete_global_blocked (struct file_lock*) ;

__attribute__((used)) static void __locks_delete_block(struct file_lock *waiter)
{
 locks_delete_global_blocked(waiter);
 list_del_init(&waiter->fl_blocked_member);
 waiter->fl_blocker = ((void*)0);
}
