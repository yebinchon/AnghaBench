
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ pid_t ;


 unsigned int SIGCHLD ;
 int STACK_SIZE ;
 int abort () ;
 scalar_t__ clone (int ,int *,unsigned int,int *) ;
 int idle_thread_fn ;
 int * malloc (int) ;
 int printf (char*) ;

__attribute__((used)) static pid_t spawn_idle_thread(unsigned int flags)
{
 uint8_t *stack;
 pid_t pid;

 stack = malloc(STACK_SIZE);
 if (!stack) {
  printf("malloc(STACK_SIZE) failed: %m\n");
  abort();
 }

 pid = clone(idle_thread_fn,
      stack + STACK_SIZE,
      SIGCHLD | flags,
      ((void*)0));
 if (pid < 0) {
  printf("clone() failed: %m\n");
  abort();
 }

 return pid;
}
