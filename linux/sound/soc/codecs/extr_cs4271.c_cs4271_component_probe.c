
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct cs4271_private {int enable_soft_reset; int regmap; int supplies; } ;
struct cs4271_platform_data {int amutec_eq_bmutec; int enable_soft_reset; } ;
struct TYPE_3__ {int of_node; struct cs4271_platform_data* platform_data; } ;


 int ARRAY_SIZE (int ) ;
 int CS4271_MODE2 ;
 int CS4271_MODE2_CPEN ;
 int CS4271_MODE2_MUTECAEQUB ;
 int CS4271_MODE2_PDN ;
 int cs4271_dt_ids ;
 int cs4271_reset (struct snd_soc_component*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 scalar_t__ of_get_property (int ,char*,int *) ;
 scalar_t__ of_match_device (int ,TYPE_1__*) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_bulk_enable (int ,int ) ;
 struct cs4271_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int udelay (int) ;

__attribute__((used)) static int cs4271_component_probe(struct snd_soc_component *component)
{
 struct cs4271_private *cs4271 = snd_soc_component_get_drvdata(component);
 struct cs4271_platform_data *cs4271plat = component->dev->platform_data;
 int ret;
 bool amutec_eq_bmutec = 0;
 ret = regulator_bulk_enable(ARRAY_SIZE(cs4271->supplies),
        cs4271->supplies);
 if (ret < 0) {
  dev_err(component->dev, "Failed to enable regulators: %d\n", ret);
  return ret;
 }

 if (cs4271plat) {
  amutec_eq_bmutec = cs4271plat->amutec_eq_bmutec;
  cs4271->enable_soft_reset = cs4271plat->enable_soft_reset;
 }


 cs4271_reset(component);

 ret = regcache_sync(cs4271->regmap);
 if (ret < 0)
  return ret;

 ret = regmap_update_bits(cs4271->regmap, CS4271_MODE2,
     CS4271_MODE2_PDN | CS4271_MODE2_CPEN,
     CS4271_MODE2_PDN | CS4271_MODE2_CPEN);
 if (ret < 0)
  return ret;
 ret = regmap_update_bits(cs4271->regmap, CS4271_MODE2,
     CS4271_MODE2_PDN, 0);
 if (ret < 0)
  return ret;

 udelay(85);

 if (amutec_eq_bmutec)
  regmap_update_bits(cs4271->regmap, CS4271_MODE2,
       CS4271_MODE2_MUTECAEQUB,
       CS4271_MODE2_MUTECAEQUB);

 return 0;
}
