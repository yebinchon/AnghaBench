
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BDADDR_ANY ;
 int BT_DBG (char*) ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int kthread_should_stop () ;
 int remove_wait_queue (int *,int *) ;
 int rfcomm_add_listener (int ) ;
 int rfcomm_kill_listener () ;
 int rfcomm_process_sessions () ;
 int rfcomm_wq ;
 int set_user_nice (int ,int) ;
 int wait ;
 int wait_woken (int *,int ,int ) ;
 int woken_wake_function ;

__attribute__((used)) static int rfcomm_run(void *unused)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 BT_DBG("");

 set_user_nice(current, -10);

 rfcomm_add_listener(BDADDR_ANY);

 add_wait_queue(&rfcomm_wq, &wait);
 while (!kthread_should_stop()) {


  rfcomm_process_sessions();

  wait_woken(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
 }
 remove_wait_queue(&rfcomm_wq, &wait);

 rfcomm_kill_listener();

 return 0;
}
