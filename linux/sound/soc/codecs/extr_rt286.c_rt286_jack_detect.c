
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ cbj_en; } ;
struct rt286_priv {int regmap; TYPE_1__ pdata; int component; } ;


 int EINVAL ;
 int RT286_CBJ_CTRL1 ;
 int RT286_CBJ_CTRL2 ;
 int RT286_DC_GAIN ;
 int RT286_GET_HP_SENSE ;
 int RT286_GET_MIC1_SENSE ;
 int RT286_SET_MIC1 ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int rt286_jack_detect(struct rt286_priv *rt286, bool *hp, bool *mic)
{
 struct snd_soc_dapm_context *dapm;
 unsigned int val, buf;

 *hp = 0;
 *mic = 0;

 if (!rt286->component)
  return -EINVAL;

 dapm = snd_soc_component_get_dapm(rt286->component);

 if (rt286->pdata.cbj_en) {
  regmap_read(rt286->regmap, RT286_GET_HP_SENSE, &buf);
  *hp = buf & 0x80000000;
  if (*hp) {

   regmap_update_bits(rt286->regmap,
    RT286_DC_GAIN, 0x200, 0x200);

   snd_soc_dapm_force_enable_pin(dapm, "HV");
   snd_soc_dapm_force_enable_pin(dapm, "VREF");

   snd_soc_dapm_force_enable_pin(dapm, "LDO1");
   snd_soc_dapm_sync(dapm);

   regmap_write(rt286->regmap, RT286_SET_MIC1, 0x24);
   msleep(50);

   regmap_update_bits(rt286->regmap,
    RT286_CBJ_CTRL1, 0xfcc0, 0xd400);
   msleep(300);
   regmap_read(rt286->regmap, RT286_CBJ_CTRL2, &val);

   if (0x0070 == (val & 0x0070)) {
    *mic = 1;
   } else {
    regmap_update_bits(rt286->regmap,
     RT286_CBJ_CTRL1, 0xfcc0, 0xe400);
    msleep(300);
    regmap_read(rt286->regmap,
     RT286_CBJ_CTRL2, &val);
    if (0x0070 == (val & 0x0070))
     *mic = 1;
    else
     *mic = 0;
   }
   regmap_update_bits(rt286->regmap,
    RT286_DC_GAIN, 0x200, 0x0);

  } else {
   *mic = 0;
   regmap_write(rt286->regmap, RT286_SET_MIC1, 0x20);
   regmap_update_bits(rt286->regmap,
    RT286_CBJ_CTRL1, 0x0400, 0x0000);
  }
 } else {
  regmap_read(rt286->regmap, RT286_GET_HP_SENSE, &buf);
  *hp = buf & 0x80000000;
  regmap_read(rt286->regmap, RT286_GET_MIC1_SENSE, &buf);
  *mic = buf & 0x80000000;
 }
 if (!*mic) {
  snd_soc_dapm_disable_pin(dapm, "HV");
  snd_soc_dapm_disable_pin(dapm, "VREF");
 }
 if (!*hp)
  snd_soc_dapm_disable_pin(dapm, "LDO1");
 snd_soc_dapm_sync(dapm);

 return 0;
}
