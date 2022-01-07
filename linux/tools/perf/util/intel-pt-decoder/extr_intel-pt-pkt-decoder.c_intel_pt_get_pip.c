
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_pkt {int payload; int type; } ;


 int INTEL_PT_NEED_MORE_BYTES ;
 int INTEL_PT_PIP ;
 int NR_FLAG ;
 int memcpy_le64 (int*,unsigned char const*,int) ;

__attribute__((used)) static int intel_pt_get_pip(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 uint64_t payload = 0;

 if (len < 8)
  return INTEL_PT_NEED_MORE_BYTES;

 packet->type = INTEL_PT_PIP;
 memcpy_le64(&payload, buf + 2, 6);
 packet->payload = payload >> 1;
 if (payload & 1)
  packet->payload |= NR_FLAG;

 return 8;
}
