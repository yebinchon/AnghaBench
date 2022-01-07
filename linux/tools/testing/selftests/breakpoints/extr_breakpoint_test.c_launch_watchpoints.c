
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BP_W ;
 int COUNT_WPS ;
 int PTRACE_CONT ;
 int check_success (char*) ;
 int child_pid ;
 int * dummy_var ;
 int ptrace (int ,int ,int *,int ) ;
 int set_breakpoint_addr (int *,int) ;
 int sprintf (char*,char*,char const*,int,int,int,int) ;
 int toggle_breakpoint (int,int,int,int,int,int) ;

__attribute__((used)) static void launch_watchpoints(char *buf, int mode, int len,
          int local, int global)
{
 const char *mode_str;
 int i;

 if (mode == BP_W)
  mode_str = "write";
 else
  mode_str = "read";

 for (i = 0; i < COUNT_WPS; i++) {
  set_breakpoint_addr(&dummy_var[i], i);
  toggle_breakpoint(i, mode, len, local, global, 1);
  ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
  sprintf(buf,
   "Test %s watchpoint %d with len: %d local: %d global: %d\n",
   mode_str, i, len, local, global);
  check_success(buf);
  toggle_breakpoint(i, mode, len, local, global, 0);
 }
}
