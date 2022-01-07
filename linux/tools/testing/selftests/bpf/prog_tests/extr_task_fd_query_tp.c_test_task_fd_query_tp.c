
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_task_fd_query_tp_core (char*,char*) ;

void test_task_fd_query_tp(void)
{
 test_task_fd_query_tp_core("sched/sched_switch",
       "sched_switch");
 test_task_fd_query_tp_core("syscalls/sys_enter_read",
       "sys_enter_read");
}
