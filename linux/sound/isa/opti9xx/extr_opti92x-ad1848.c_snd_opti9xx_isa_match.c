
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ isapnp ;
 scalar_t__ snd_opti9xx_pnp_is_probed ;

__attribute__((used)) static int snd_opti9xx_isa_match(struct device *devptr,
     unsigned int dev)
{






 return 1;
}
