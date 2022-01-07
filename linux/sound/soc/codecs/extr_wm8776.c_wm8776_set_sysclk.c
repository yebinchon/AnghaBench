
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8776_priv {unsigned int* sysclk; } ;
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {size_t id; } ;


 size_t ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct wm8776_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8776_set_sysclk(struct snd_soc_dai *dai,
        int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8776_priv *wm8776 = snd_soc_component_get_drvdata(component);

 if (WARN_ON(dai->driver->id >= ARRAY_SIZE(wm8776->sysclk)))
  return -EINVAL;

 wm8776->sysclk[dai->driver->id] = freq;

 return 0;
}
