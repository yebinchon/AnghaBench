
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGCHLD ;
 int __clone2 (int ,char**,size_t,int,int *,int*) ;
 int clone (int ,char**,int,int *,int*) ;
 int do_child ;

__attribute__((used)) static pid_t pidfd_clone(int flags, int *pidfd)
{
 size_t stack_size = 1024;
 char *stack[1024] = { 0 };




 return clone(do_child, stack + stack_size, flags | SIGCHLD, ((void*)0), pidfd);

}
