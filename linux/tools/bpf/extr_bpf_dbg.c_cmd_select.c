
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERR ;
 int CMD_OK ;
 int bpf_reset () ;
 int * pcap_curr_pkt () ;
 int pcap_loaded () ;
 int pcap_next_pkt () ;
 int pcap_reset_pkt () ;
 int rl_printf (char*,...) ;
 scalar_t__ strlen (char*) ;
 unsigned int strtoul (char*,int *,int) ;

__attribute__((used)) static int cmd_select(char *num)
{
 unsigned int which, i;
 bool have_next = 1;

 if (!pcap_loaded() || strlen(num) == 0)
  return CMD_ERR;

 which = strtoul(num, ((void*)0), 10);
 if (which == 0) {
  rl_printf("packet count starts with 1, clamping!\n");
  which = 1;
 }

 pcap_reset_pkt();
 bpf_reset();

 for (i = 0; i < which && (have_next = pcap_next_pkt()); i++)
            ;
 if (!have_next || pcap_curr_pkt() == ((void*)0)) {
  rl_printf("no packet #%u available!\n", which);
  pcap_reset_pkt();
  return CMD_ERR;
 }

 return CMD_OK;
}
