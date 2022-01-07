
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {unsigned char payload; int type; } ;


 int INTEL_PT_MTC ;
 int INTEL_PT_NEED_MORE_BYTES ;

__attribute__((used)) static int intel_pt_get_mtc(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 if (len < 2)
  return INTEL_PT_NEED_MORE_BYTES;
 packet->type = INTEL_PT_MTC;
 packet->payload = buf[1];
 return 2;
}
