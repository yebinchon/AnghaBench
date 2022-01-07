
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_code; } ;
typedef TYPE_1__ siginfo_t ;
typedef scalar_t__ pid_t ;


 int PTRACE_CONT ;
 int PTRACE_GETSIGINFO ;
 int SIGKILL ;
 scalar_t__ SIGSTOP ;
 scalar_t__ SIGTRAP ;
 scalar_t__ TRAP_HWBKPT ;
 scalar_t__ WIFEXITED (int) ;
 int WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int __WALL ;
 int alarm (int) ;
 int child (int,int) ;
 int errno ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 int ksft_print_msg (char*,...) ;
 int ksft_test_result_fail (char*,scalar_t__) ;
 scalar_t__ ptrace (int ,scalar_t__,int *,TYPE_1__*) ;
 int set_watchpoint (scalar_t__,int,int) ;
 scalar_t__ strerror (int ) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static bool arun_test(int wr_size, int wp_size, int wr, int wp)
{
 int status;
 siginfo_t siginfo;
 pid_t pid = fork();
 pid_t wpid;

 if (pid < 0) {
  ksft_test_result_fail(
   "fork() failed: %s\n", strerror(errno));
  return 0;
 }
 if (pid == 0)
  child(wr_size, wr);

 wpid = waitpid(pid, &status, __WALL);
 if (wpid != pid) {
  ksft_print_msg(
   "waitpid() failed: %s\n", strerror(errno));
  return 0;
 }
 if (!WIFSTOPPED(status)) {
  ksft_print_msg(
   "child did not stop: %s\n", strerror(errno));
  return 0;
 }
 if (WSTOPSIG(status) != SIGSTOP) {
  ksft_print_msg("child did not stop with SIGSTOP\n");
  return 0;
 }

 if (!set_watchpoint(pid, wp_size, wp))
  return 0;

 if (ptrace(PTRACE_CONT, pid, ((void*)0), ((void*)0)) < 0) {
  ksft_print_msg(
   "ptrace(PTRACE_SINGLESTEP) failed: %s\n",
   strerror(errno));
  return 0;
 }

 alarm(3);
 wpid = waitpid(pid, &status, __WALL);
 if (wpid != pid) {
  ksft_print_msg(
   "waitpid() failed: %s\n", strerror(errno));
  return 0;
 }
 alarm(0);
 if (WIFEXITED(status)) {
  ksft_print_msg("child did not single-step\n");
  return 0;
 }
 if (!WIFSTOPPED(status)) {
  ksft_print_msg("child did not stop\n");
  return 0;
 }
 if (WSTOPSIG(status) != SIGTRAP) {
  ksft_print_msg("child did not stop with SIGTRAP\n");
  return 0;
 }
 if (ptrace(PTRACE_GETSIGINFO, pid, ((void*)0), &siginfo) != 0) {
  ksft_print_msg(
   "ptrace(PTRACE_GETSIGINFO): %s\n",
   strerror(errno));
  return 0;
 }
 if (siginfo.si_code != TRAP_HWBKPT) {
  ksft_print_msg(
   "Unexpected si_code %d\n", siginfo.si_code);
  return 0;
 }

 kill(pid, SIGKILL);
 wpid = waitpid(pid, &status, 0);
 if (wpid != pid) {
  ksft_print_msg(
   "waitpid() failed: %s\n", strerror(errno));
  return 0;
 }
 return 1;
}
