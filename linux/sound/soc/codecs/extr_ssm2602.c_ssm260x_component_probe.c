
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int type; int regmap; } ;
struct snd_soc_component {int dev; } ;


 int APANA_ENABLE_MIC_BOOST ;
 int APANA_SELECT_DAC ;
 int LINVOL_LRIN_BOTH ;
 int RINVOL_RLIN_BOTH ;

 int SSM2602_APANA ;
 int SSM2602_LINVOL ;
 int SSM2602_RESET ;
 int SSM2602_RINVOL ;

 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int ssm2602_component_probe (struct snd_soc_component*) ;
 int ssm2604_component_probe (struct snd_soc_component*) ;

__attribute__((used)) static int ssm260x_component_probe(struct snd_soc_component *component)
{
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(component);
 int ret;

 ret = regmap_write(ssm2602->regmap, SSM2602_RESET, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }


 regmap_update_bits(ssm2602->regmap, SSM2602_LINVOL,
       LINVOL_LRIN_BOTH, LINVOL_LRIN_BOTH);
 regmap_update_bits(ssm2602->regmap, SSM2602_RINVOL,
       RINVOL_RLIN_BOTH, RINVOL_RLIN_BOTH);

 regmap_write(ssm2602->regmap, SSM2602_APANA, APANA_SELECT_DAC |
   APANA_ENABLE_MIC_BOOST);

 switch (ssm2602->type) {
 case 129:
  ret = ssm2602_component_probe(component);
  break;
 case 128:
  ret = ssm2604_component_probe(component);
  break;
 }

 return ret;
}
