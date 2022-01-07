
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {int type; } ;


 int ARM_SPE_NEED_MORE_BYTES ;
 int ARM_SPE_PAD ;

__attribute__((used)) static int arm_spe_get_alignment(const unsigned char *buf, size_t len,
     struct arm_spe_pkt *packet)
{
 unsigned int alignment = 1 << ((buf[0] & 0xf) + 1);

 if (len < alignment)
  return ARM_SPE_NEED_MORE_BYTES;

 packet->type = ARM_SPE_PAD;
 return alignment - (((uintptr_t)buf) & (alignment - 1));
}
