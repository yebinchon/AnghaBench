
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERR ;
 int CMD_OK ;
 int bpf_disasm (int ,unsigned long) ;
 int bpf_disasm_all (int *,unsigned long) ;
 int * bpf_image ;
 unsigned long bpf_prog_len ;
 int bpf_prog_loaded () ;
 scalar_t__ strlen (char*) ;
 unsigned long strtoul (char*,int *,int) ;

__attribute__((used)) static int cmd_disassemble(char *line_string)
{
 bool single_line = 0;
 unsigned long line;

 if (!bpf_prog_loaded())
  return CMD_ERR;
 if (strlen(line_string) > 0 &&
     (line = strtoul(line_string, ((void*)0), 10)) < bpf_prog_len)
  single_line = 1;
 if (single_line)
  bpf_disasm(bpf_image[line], line);
 else
  bpf_disasm_all(bpf_image, bpf_prog_len);

 return CMD_OK;
}
