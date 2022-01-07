
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERR ;
 int CMD_OK ;
 int bpf_disasm (int ,unsigned int) ;
 int bpf_dump_breakpoints () ;
 int * bpf_image ;
 unsigned int bpf_prog_len ;
 int bpf_prog_loaded () ;
 int bpf_reset_breakpoints () ;
 int bpf_set_breakpoints (unsigned int) ;
 scalar_t__ matches (char*,char*) ;
 int rl_printf (char*) ;
 scalar_t__ strlen (char*) ;
 unsigned int strtoul (char*,int *,int) ;

__attribute__((used)) static int cmd_breakpoint(char *subcmd)
{
 if (!bpf_prog_loaded())
  return CMD_ERR;
 if (strlen(subcmd) == 0)
  bpf_dump_breakpoints();
 else if (matches(subcmd, "reset") == 0)
  bpf_reset_breakpoints();
 else {
  unsigned int where = strtoul(subcmd, ((void*)0), 10);

  if (where < bpf_prog_len) {
   bpf_set_breakpoints(where);
   rl_printf("breakpoint at: ");
   bpf_disasm(bpf_image[where], where);
  }
 }

 return CMD_OK;
}
