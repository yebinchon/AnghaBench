
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hp_pol; struct wm5100_jack_mode* jack_modes; } ;
struct wm5100_priv {int jack_mode; int dev; int regmap; TYPE_1__ pdata; } ;
struct wm5100_jack_mode {int bias; int micd_src; int hp_pol; } ;


 int ARRAY_SIZE (struct wm5100_jack_mode*) ;
 scalar_t__ WARN_ON (int) ;
 int WM5100_ACCDET_BIAS_SRC_MASK ;
 int WM5100_ACCDET_BIAS_SRC_SHIFT ;
 int WM5100_ACCDET_SRC ;
 int WM5100_ACCDET_SRC_SHIFT ;
 int WM5100_ACCESSORY_DETECT_MODE_1 ;
 int WM5100_HPCOM_SRC ;
 int WM5100_HPCOM_SRC_SHIFT ;
 int WM5100_MISC_CONTROL ;
 int dev_dbg (int ,char*,int) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void wm5100_set_detect_mode(struct wm5100_priv *wm5100, int the_mode)
{
 struct wm5100_jack_mode *mode = &wm5100->pdata.jack_modes[the_mode];

 if (WARN_ON(the_mode >= ARRAY_SIZE(wm5100->pdata.jack_modes)))
  return;

 gpio_set_value_cansleep(wm5100->pdata.hp_pol, mode->hp_pol);
 regmap_update_bits(wm5100->regmap, WM5100_ACCESSORY_DETECT_MODE_1,
      WM5100_ACCDET_BIAS_SRC_MASK |
      WM5100_ACCDET_SRC,
      (mode->bias << WM5100_ACCDET_BIAS_SRC_SHIFT) |
      mode->micd_src << WM5100_ACCDET_SRC_SHIFT);
 regmap_update_bits(wm5100->regmap, WM5100_MISC_CONTROL,
      WM5100_HPCOM_SRC,
      mode->micd_src << WM5100_HPCOM_SRC_SHIFT);

 wm5100->jack_mode = the_mode;

 dev_dbg(wm5100->dev, "Set microphone polarity to %d\n",
  wm5100->jack_mode);
}
