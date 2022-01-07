
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {unsigned char count; int payload; int type; } ;


 int INTEL_PT_BIP ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int memcpy_le64 (int *,unsigned char const*,int) ;

__attribute__((used)) static int intel_pt_get_bip_4(const unsigned char *buf, size_t len,
         struct intel_pt_pkt *packet)
{
 if (len < 5)
  return INTEL_PT_NEED_MORE_BYTES;
 packet->type = INTEL_PT_BIP;
 packet->count = buf[0] >> 3;
 memcpy_le64(&packet->payload, buf + 1, 4);
 return 5;
}
