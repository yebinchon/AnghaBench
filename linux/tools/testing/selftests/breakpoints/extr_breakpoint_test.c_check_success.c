
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_PEEKDATA ;
 int PTRACE_POKEDATA ;
 scalar_t__ SIGTRAP ;
 scalar_t__ WSTOPSIG (int) ;
 int child_pid ;
 int errno ;
 int ksft_exit_fail_msg (char*,int ) ;
 int ksft_test_result_fail (char const*) ;
 int ksft_test_result_pass (char const*) ;
 int nr_tests ;
 int ptrace (int ,int ,int*,int) ;
 int strerror (int ) ;
 int trapped ;
 int wait (int*) ;

__attribute__((used)) static void check_success(const char *msg)
{
 int child_nr_tests;
 int status;
 int ret;


 wait(&status);

 ret = 0;

 if (WSTOPSIG(status) == SIGTRAP) {
  child_nr_tests = ptrace(PTRACE_PEEKDATA, child_pid,
     &nr_tests, 0);
  if (child_nr_tests == nr_tests)
   ret = 1;
  if (ptrace(PTRACE_POKEDATA, child_pid, &trapped, 1))
   ksft_exit_fail_msg("Can't poke: %s\n", strerror(errno));
 }

 nr_tests++;

 if (ret)
  ksft_test_result_pass(msg);
 else
  ksft_test_result_fail(msg);
}
