
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {int index; int type; } ;


 int ARM_SPE_EVENTS ;
 int arm_spe_get_payload (unsigned char const*,size_t,struct arm_spe_pkt*) ;

__attribute__((used)) static int arm_spe_get_events(const unsigned char *buf, size_t len,
         struct arm_spe_pkt *packet)
{
 int ret = arm_spe_get_payload(buf, len, packet);

 packet->type = ARM_SPE_EVENTS;






 packet->index = ret - 1;

 return ret;
}
