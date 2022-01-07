
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_return_notifier {int link; } ;


 int TIF_USER_RETURN_NOTIFY ;
 int clear_tsk_thread_flag (int ,int ) ;
 int current ;
 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int ) ;
 int return_notifier_list ;
 int this_cpu_ptr (int *) ;

void user_return_notifier_unregister(struct user_return_notifier *urn)
{
 hlist_del(&urn->link);
 if (hlist_empty(this_cpu_ptr(&return_notifier_list)))
  clear_tsk_thread_flag(current, TIF_USER_RETURN_NOTIFY);
}
