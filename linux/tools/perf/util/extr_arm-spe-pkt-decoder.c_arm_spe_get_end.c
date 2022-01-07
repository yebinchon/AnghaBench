
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {int type; } ;


 int ARM_SPE_END ;

__attribute__((used)) static int arm_spe_get_end(struct arm_spe_pkt *packet)
{
 packet->type = ARM_SPE_END;
 return 1;
}
