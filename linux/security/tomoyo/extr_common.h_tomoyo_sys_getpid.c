
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int current ;
 int task_tgid_vnr (int ) ;

__attribute__((used)) static inline pid_t tomoyo_sys_getpid(void)
{
 return task_tgid_vnr(current);
}
