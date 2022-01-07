
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BP_X ;
 int COUNT_ISN_BPS ;
 int PTRACE_CONT ;
 int check_success (char*) ;
 int child_pid ;
 int * dummy_funcs ;
 int ptrace (int ,int ,int *,int ) ;
 int set_breakpoint_addr (int ,int) ;
 int sprintf (char*,char*,int,int,int) ;
 int toggle_breakpoint (int,int ,int,int,int,int) ;

__attribute__((used)) static void launch_instruction_breakpoints(char *buf, int local, int global)
{
 int i;

 for (i = 0; i < COUNT_ISN_BPS; i++) {
  set_breakpoint_addr(dummy_funcs[i], i);
  toggle_breakpoint(i, BP_X, 1, local, global, 1);
  ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
  sprintf(buf, "Test breakpoint %d with local: %d global: %d\n",
   i, local, global);
  check_success(buf);
  toggle_breakpoint(i, BP_X, 1, local, global, 0);
 }
}
