
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ pid; int comm; } ;


 int PR_GET_NAME ;
 int __NR_gettid ;
 struct task_struct current_obj ;
 int prctl (int ,int ) ;
 scalar_t__ syscall (int ) ;

struct task_struct *__curr(void)
{
 if (current_obj.pid == 0) {

  prctl(PR_GET_NAME, current_obj.comm);
  current_obj.pid = syscall(__NR_gettid);
 }

 return &current_obj;
}
