
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct pcap_pkthdr {int len; int caplen; } ;


 int CMD_ERR ;
 int CMD_OK ;
 int bpf_image ;
 int bpf_prog_len ;
 int bpf_prog_loaded () ;
 int bpf_reset () ;
 int bpf_run_all (int ,int ,int *,int ,int ) ;
 struct pcap_pkthdr* pcap_curr_pkt () ;
 int pcap_loaded () ;
 scalar_t__ pcap_next_pkt () ;
 int pcap_reset_pkt () ;
 int rl_printf (char*,scalar_t__,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int cmd_run(char *num)
{
 static uint32_t pass, fail;
 bool has_limit = 1;
 int pkts = 0, i = 0;

 if (!bpf_prog_loaded() || !pcap_loaded())
  return CMD_ERR;

 pkts = strtol(num, ((void*)0), 10);
 if (pkts == 0 || strlen(num) == 0)
  has_limit = 0;

 do {
  struct pcap_pkthdr *hdr = pcap_curr_pkt();
  int ret = bpf_run_all(bpf_image, bpf_prog_len,
          (uint8_t *) hdr + sizeof(*hdr),
          hdr->caplen, hdr->len);
  if (ret > 0)
   pass++;
  else if (ret == 0)
   fail++;
  else
   return CMD_OK;
  bpf_reset();
 } while (pcap_next_pkt() && (!has_limit || (has_limit && ++i < pkts)));

 rl_printf("bpf passes:%u fails:%u\n", pass, fail);

 pcap_reset_pkt();
 bpf_reset();

 pass = fail = 0;
 return CMD_OK;
}
