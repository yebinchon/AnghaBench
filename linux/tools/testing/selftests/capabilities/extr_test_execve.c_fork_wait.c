
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int errno ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int ksft_exit_fail_msg (char*,int ) ;
 int ksft_print_msg (char*) ;
 int ksft_test_result_pass (char*) ;
 scalar_t__ mpid ;
 scalar_t__ nerrs ;
 int strerror (int ) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static bool fork_wait(void)
{
 pid_t child = fork();
 if (child == 0) {
  nerrs = 0;
  return 1;
 } else if (child > 0) {
  int status;
  if (waitpid(child, &status, 0) != child ||
      !WIFEXITED(status)) {
   ksft_print_msg("Child died\n");
   nerrs++;
  } else if (WEXITSTATUS(status) != 0) {
   ksft_print_msg("Child failed\n");
   nerrs++;
  } else {

   if (getpid() != mpid)
    ksft_test_result_pass("Passed\n");
  }
  return 0;
 } else {
  ksft_exit_fail_msg("fork - %s\n", strerror(errno));
  return 0;
 }
}
