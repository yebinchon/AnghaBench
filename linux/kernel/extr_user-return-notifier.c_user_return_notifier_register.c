
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_return_notifier {int link; } ;


 int TIF_USER_RETURN_NOTIFY ;
 int current ;
 int hlist_add_head (int *,int ) ;
 int return_notifier_list ;
 int set_tsk_thread_flag (int ,int ) ;
 int this_cpu_ptr (int *) ;

void user_return_notifier_register(struct user_return_notifier *urn)
{
 set_tsk_thread_flag(current, TIF_USER_RETURN_NOTIFY);
 hlist_add_head(&urn->link, this_cpu_ptr(&return_notifier_list));
}
