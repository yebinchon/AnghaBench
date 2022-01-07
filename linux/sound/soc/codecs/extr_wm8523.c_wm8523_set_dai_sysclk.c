
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
struct wm8523_priv {unsigned int sysclk; unsigned int* rate_constraint_list; TYPE_1__ rate_constraint; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_5__ {unsigned int ratio; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int dev_dbg (int ,char*,unsigned int) ;
 TYPE_2__* lrclk_ratios ;
 struct wm8523_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8523_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8523_priv *wm8523 = snd_soc_component_get_drvdata(component);
 unsigned int val;
 int i;

 wm8523->sysclk = freq;

 wm8523->rate_constraint.count = 0;
 for (i = 0; i < ARRAY_SIZE(lrclk_ratios); i++) {
  val = freq / lrclk_ratios[i].ratio;




  switch (val) {
  case 8000:
  case 11025:
  case 16000:
  case 22050:
  case 32000:
  case 44100:
  case 48000:
  case 64000:
  case 88200:
  case 96000:
  case 176400:
  case 192000:
   dev_dbg(component->dev, "Supported sample rate: %dHz\n",
    val);
   wm8523->rate_constraint_list[i] = val;
   wm8523->rate_constraint.count++;
   break;
  default:
   dev_dbg(component->dev, "Skipping sample rate: %dHz\n",
    val);
  }
 }


 if (wm8523->rate_constraint.count == 0)
  return -EINVAL;

 return 0;
}
