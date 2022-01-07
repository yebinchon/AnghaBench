
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bpf_prog_len ;
 int rl_printf (char*) ;

__attribute__((used)) static bool bpf_prog_loaded(void)
{
 if (bpf_prog_len == 0)
  rl_printf("no bpf program loaded!\n");

 return bpf_prog_len > 0;
}
