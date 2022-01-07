
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_pkt {int dummy; } ;


 int INTEL_PT_PKT_DESC_MAX ;
 int f ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ intel_pt_log_open () ;
 int intel_pt_pkt_desc (struct intel_pt_pkt const*,char*,int) ;
 int intel_pt_print_data (unsigned char const*,int,int ,int ) ;

void __intel_pt_log_packet(const struct intel_pt_pkt *packet, int pkt_len,
      uint64_t pos, const unsigned char *buf)
{
 char desc[INTEL_PT_PKT_DESC_MAX];

 if (intel_pt_log_open())
  return;

 intel_pt_print_data(buf, pkt_len, pos, 0);
 intel_pt_pkt_desc(packet, desc, INTEL_PT_PKT_DESC_MAX);
 fprintf(f, "%s\n", desc);
}
