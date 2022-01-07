
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_pkt {int payload; int type; } ;


 int INTEL_PT_MWAIT ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int intel_pt_get_mwait(const unsigned char *buf, size_t len,
         struct intel_pt_pkt *packet)
{
 if (len < 10)
  return INTEL_PT_NEED_MORE_BYTES;
 packet->type = INTEL_PT_MWAIT;
 packet->payload = le64_to_cpu(*(uint64_t *)(buf + 2));
 return 10;
}
