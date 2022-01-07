
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int wm8510_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8510_probe(struct snd_soc_component *component)
{
 wm8510_reset(component);

 return 0;
}
