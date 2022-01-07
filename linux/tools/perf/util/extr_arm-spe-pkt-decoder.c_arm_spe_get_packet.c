
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {scalar_t__ type; } ;


 scalar_t__ ARM_SPE_PAD ;
 int arm_spe_do_get_packet (unsigned char const*,size_t,struct arm_spe_pkt*) ;

int arm_spe_get_packet(const unsigned char *buf, size_t len,
         struct arm_spe_pkt *packet)
{
 int ret;

 ret = arm_spe_do_get_packet(buf, len, packet);



 if (ret > 0 && packet->type == ARM_SPE_PAD) {
  while (ret < 16 && len > (size_t)ret && !buf[ret])
   ret += 1;
 }
 return ret;
}
