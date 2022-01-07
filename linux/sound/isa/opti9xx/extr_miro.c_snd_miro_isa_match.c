
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ isapnp ;
 scalar_t__ snd_miro_pnp_is_probed ;

__attribute__((used)) static int snd_miro_isa_match(struct device *devptr, unsigned int n)
{






 return 1;
}
