
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {int type; } ;


 int ARM_SPE_TIMESTAMP ;
 int arm_spe_get_payload (unsigned char const*,size_t,struct arm_spe_pkt*) ;

__attribute__((used)) static int arm_spe_get_timestamp(const unsigned char *buf, size_t len,
     struct arm_spe_pkt *packet)
{
 packet->type = ARM_SPE_TIMESTAMP;
 return arm_spe_get_payload(buf, len, packet);
}
