
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ pid_t ;


 int CLONE_FILES ;
 int CLONE_FS ;
 int CLONE_VM ;
 int SIGCHLD ;
 int STACK_SIZE ;
 int abort () ;
 scalar_t__ clone (int ,int *,int,int *) ;
 int * malloc (int) ;
 int printf (char*) ;
 int sealing_thread_fn ;

__attribute__((used)) static pid_t spawn_sealing_thread(void)
{
 uint8_t *stack;
 pid_t pid;

 stack = malloc(STACK_SIZE);
 if (!stack) {
  printf("malloc(STACK_SIZE) failed: %m\n");
  abort();
 }

 pid = clone(sealing_thread_fn,
      stack + STACK_SIZE,
      SIGCHLD | CLONE_FILES | CLONE_FS | CLONE_VM,
      ((void*)0));
 if (pid < 0) {
  printf("clone() failed: %m\n");
  abort();
 }

 return pid;
}
