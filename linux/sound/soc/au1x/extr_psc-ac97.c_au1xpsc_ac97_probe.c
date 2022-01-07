
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int ENODEV ;
 scalar_t__ au1xpsc_ac97_workdata ;

__attribute__((used)) static int au1xpsc_ac97_probe(struct snd_soc_dai *dai)
{
 return au1xpsc_ac97_workdata ? 0 : -ENODEV;
}
