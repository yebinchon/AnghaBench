
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ child_pid ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int ksft_exit_pass () ;
 int ksft_print_header () ;
 int launch_tests () ;
 int trigger_tests () ;
 int wait (int *) ;

int main(int argc, char **argv)
{
 pid_t pid;
 int ret;

 ksft_print_header();

 pid = fork();
 if (!pid) {
  trigger_tests();
  exit(0);
 }

 child_pid = pid;

 wait(((void*)0));

 launch_tests();

 wait(((void*)0));

 ksft_exit_pass();
}
