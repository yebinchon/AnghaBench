
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ TWL6040_REV_ES1_3 ;
 struct twl6040* to_twl6040 (struct snd_soc_component*) ;
 scalar_t__ twl6040_get_revid (struct twl6040*) ;

int twl6040_get_hs_step_size(struct snd_soc_component *component)
{
 struct twl6040 *twl6040 = to_twl6040(component);

 if (twl6040_get_revid(twl6040) < TWL6040_REV_ES1_3)

  return 2;
 else

  return 1;
}
