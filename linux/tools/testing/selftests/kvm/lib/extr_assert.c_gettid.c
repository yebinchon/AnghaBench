
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SYS_gettid ;
 int syscall (int ) ;

__attribute__((used)) static pid_t gettid(void)
{
 return syscall(SYS_gettid);
}
