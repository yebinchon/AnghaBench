
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct pcap_pkthdr {int len; int caplen; } ;
struct TYPE_2__ {scalar_t__ Rs; } ;


 int CMD_ERR ;
 int CMD_OK ;
 TYPE_1__ bpf_curr ;
 int bpf_image ;
 int bpf_prog_len ;
 int bpf_prog_loaded () ;
 int bpf_reset () ;
 int bpf_restore_regs (int) ;
 int bpf_run_stepping (int ,int ,int *,int ,int ,int) ;
 struct pcap_pkthdr* pcap_curr_pkt () ;
 int pcap_loaded () ;
 int pcap_next_pkt () ;
 int pcap_reset_pkt () ;
 int rl_printf (char*) ;
 scalar_t__ strlen (char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int cmd_step(char *num)
{
 struct pcap_pkthdr *hdr;
 int steps, ret;

 if (!bpf_prog_loaded() || !pcap_loaded())
  return CMD_ERR;

 steps = strtol(num, ((void*)0), 10);
 if (steps == 0 || strlen(num) == 0)
  steps = 1;
 if (steps < 0) {
  if (!bpf_restore_regs(steps))
   return CMD_ERR;
  steps = 1;
 }

 hdr = pcap_curr_pkt();
 ret = bpf_run_stepping(bpf_image, bpf_prog_len,
          (uint8_t *) hdr + sizeof(*hdr),
          hdr->caplen, hdr->len, steps);
 if (ret >= 0 || bpf_curr.Rs) {
  bpf_reset();
  if (!pcap_next_pkt()) {
   rl_printf("(going back to first packet)\n");
   pcap_reset_pkt();
  } else {
   rl_printf("(next packet)\n");
  }
 }

 return CMD_OK;
}
