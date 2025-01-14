
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct arm_spe_pkt {int payload; } ;


 int ARM_SPE_BAD_PACKET ;
 int ARM_SPE_NEED_MORE_BYTES ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 size_t payloadlen (unsigned char const) ;

__attribute__((used)) static int arm_spe_get_payload(const unsigned char *buf, size_t len,
          struct arm_spe_pkt *packet)
{
 size_t payload_len = payloadlen(buf[0]);

 if (len < 1 + payload_len)
  return ARM_SPE_NEED_MORE_BYTES;

 buf++;

 switch (payload_len) {
 case 1: packet->payload = *(uint8_t *)buf; break;
 case 2: packet->payload = le16_to_cpu(*(uint16_t *)buf); break;
 case 4: packet->payload = le32_to_cpu(*(uint32_t *)buf); break;
 case 8: packet->payload = le64_to_cpu(*(uint64_t *)buf); break;
 default: return ARM_SPE_BAD_PACKET;
 }

 return 1 + payload_len;
}
