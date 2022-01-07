
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERR ;
 int CMD_OK ;
 int bpf_reset () ;
 int bpf_reset_breakpoints () ;
 int cmd_load_bpf (char*) ;
 int cmd_load_pcap (char*) ;
 int free (char*) ;
 scalar_t__ matches (char*,char*) ;
 int rl_printf (char*) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int cmd_load(char *arg)
{
 char *subcmd, *cont = ((void*)0), *tmp = strdup(arg);
 int ret = CMD_OK;

 subcmd = strtok_r(tmp, " ", &cont);
 if (subcmd == ((void*)0))
  goto out;
 if (matches(subcmd, "bpf") == 0) {
  bpf_reset();
  bpf_reset_breakpoints();

  if (!cont)
   ret = CMD_ERR;
  else
   ret = cmd_load_bpf(cont);
 } else if (matches(subcmd, "pcap") == 0) {
  ret = cmd_load_pcap(cont);
 } else {
out:
  rl_printf("bpf <code>:  load bpf code\n");
  rl_printf("pcap <file>: load pcap file\n");
  ret = CMD_ERR;
 }

 free(tmp);
 return ret;
}
