
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int waitpid (int ,int *,int ) ;

__attribute__((used)) static void join_sealing_thread(pid_t pid)
{
 waitpid(pid, ((void*)0), 0);
}
