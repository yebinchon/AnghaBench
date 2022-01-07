
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int assert (int) ;
 int exit (int) ;
 int fork () ;
 int loop (int) ;
 int pre_test (int) ;
 int printf (char*,int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void run_perf_test(int tasks)
{
 pid_t pid[tasks];
 int i;

 assert(!pre_test(tasks));

 for (i = 0; i < tasks; i++) {
  pid[i] = fork();
  if (pid[i] == 0) {
   loop(i);
   exit(0);
  } else if (pid[i] == -1) {
   printf("couldn't spawn #%d process\n", i);
   exit(1);
  }
 }
 for (i = 0; i < tasks; i++) {
  int status;

  assert(waitpid(pid[i], &status, 0) == pid[i]);
  assert(status == 0);
 }
}
