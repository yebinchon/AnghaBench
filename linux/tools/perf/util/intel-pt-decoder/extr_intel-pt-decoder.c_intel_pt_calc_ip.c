
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_pkt {int count; int payload; } ;



__attribute__((used)) static uint64_t intel_pt_calc_ip(const struct intel_pt_pkt *packet,
     uint64_t last_ip)
{
 uint64_t ip;

 switch (packet->count) {
 case 1:
  ip = (last_ip & (uint64_t)0xffffffffffff0000ULL) |
       packet->payload;
  break;
 case 2:
  ip = (last_ip & (uint64_t)0xffffffff00000000ULL) |
       packet->payload;
  break;
 case 3:
  ip = packet->payload;

  if (ip & (uint64_t)0x800000000000ULL)
   ip |= (uint64_t)0xffff000000000000ULL;
  break;
 case 4:
  ip = (last_ip & (uint64_t)0xffff000000000000ULL) |
       packet->payload;
  break;
 case 6:
  ip = packet->payload;
  break;
 default:
  return 0;
 }

 return ip;
}
