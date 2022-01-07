
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 scalar_t__ pipe (int*) ;
 int pr_debug (char*) ;

__attribute__((used)) static void syscall_something(void)
{
 int pipefd[2];
 int i;

 for (i = 0; i < 1000; i++) {
  if (pipe(pipefd) < 0) {
   pr_debug("pipe failed\n");
   break;
  }
  close(pipefd[1]);
  close(pipefd[0]);
 }
}
