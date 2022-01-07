
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BP_RW ;
 int BP_W ;
 int COUNT_ISN_BPS ;
 int COUNT_WPS ;
 int PTRACE_CONT ;
 int check_success (char*) ;
 int child_pid ;
 int ksft_set_plan (unsigned int) ;
 int launch_instruction_breakpoints (char*,int,int) ;
 int launch_watchpoints (char*,int ,int,int,int) ;
 int ptrace (int ,int ,int *,int ) ;

__attribute__((used)) static void launch_tests(void)
{
 char buf[1024];
 unsigned int tests = 0;
 int len, local, global, i;

 tests += 3 * COUNT_ISN_BPS;
 tests += sizeof(long) / 2 * 3 * COUNT_WPS;
 tests += sizeof(long) / 2 * 3 * COUNT_WPS;
 tests += 2;
 ksft_set_plan(tests);


 for (local = 0; local < 2; local++) {
  for (global = 0; global < 2; global++) {
   if (!local && !global)
    continue;
   launch_instruction_breakpoints(buf, local, global);
  }
 }


 for (len = 1; len <= sizeof(long); len <<= 1) {
  for (local = 0; local < 2; local++) {
   for (global = 0; global < 2; global++) {
    if (!local && !global)
     continue;
    launch_watchpoints(buf, BP_W, len,
         local, global);
   }
  }
 }


 for (len = 1; len <= sizeof(long); len <<= 1) {
  for (local = 0; local < 2; local++) {
   for (global = 0; global < 2; global++) {
    if (!local && !global)
     continue;
    launch_watchpoints(buf, BP_RW, len,
         local, global);
   }
  }
 }


 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
 check_success("Test icebp\n");


 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
 check_success("Test int 3 trap\n");

 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
}
