
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int dummy; } ;


 int register_address (struct snd_oxfw*) ;

void snd_oxfw_scs1x_update(struct snd_oxfw *oxfw)
{
 register_address(oxfw);
}
