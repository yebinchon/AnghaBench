
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int MIN (int,int) ;
 int SIGALRM ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int ksft_print_header () ;
 int ksft_set_plan (int) ;
 int ksft_test_result_fail (char*,int,int,...) ;
 int ksft_test_result_pass (char*,int,int,...) ;
 int run_test (int,int,int,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigalrm ;
 int sigemptyset (int *) ;

int main(int argc, char **argv)
{
 int opt;
 bool succeeded = 1;
 struct sigaction act;
 int wr, wp, size;
 bool result;

 ksft_print_header();
 ksft_set_plan(213);

 act.sa_handler = sigalrm;
 sigemptyset(&act.sa_mask);
 act.sa_flags = 0;
 sigaction(SIGALRM, &act, ((void*)0));
 for (size = 1; size <= 32; size = size*2) {
  for (wr = 0; wr <= 32; wr = wr + size) {
   for (wp = wr - size; wp <= wr + size; wp = wp + size) {
    result = run_test(size, MIN(size, 8), wr, wp);
    if ((result && wr == wp) ||
        (!result && wr != wp))
     ksft_test_result_pass(
      "Test size = %d write offset = %d watchpoint offset = %d\n",
      size, wr, wp);
    else {
     ksft_test_result_fail(
      "Test size = %d write offset = %d watchpoint offset = %d\n",
      size, wr, wp);
     succeeded = 0;
    }
   }
  }
 }

 for (size = 1; size <= 32; size = size*2) {
  if (run_test(size, 8, -size, -8))
   ksft_test_result_pass(
    "Test size = %d write offset = %d watchpoint offset = -8\n",
    size, -size);
  else {
   ksft_test_result_fail(
    "Test size = %d write offset = %d watchpoint offset = -8\n",
    size, -size);
   succeeded = 0;
  }
 }

 if (succeeded)
  ksft_exit_pass();
 else
  ksft_exit_fail();
}
