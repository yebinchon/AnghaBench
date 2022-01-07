
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ fork () ;
 int sleep (int) ;

__attribute__((used)) static pid_t spawn(void)
{
 pid_t pid;

 pid = fork();
 if (pid)
  return pid;

 while(1)
  sleep(5);
 return 0;
}
