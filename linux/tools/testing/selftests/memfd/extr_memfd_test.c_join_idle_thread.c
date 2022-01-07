
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGTERM ;
 int kill (int ,int ) ;
 int waitpid (int ,int *,int ) ;

__attribute__((used)) static void join_idle_thread(pid_t pid)
{
 kill(pid, SIGTERM);
 waitpid(pid, ((void*)0), 0);
}
