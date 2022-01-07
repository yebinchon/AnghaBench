
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct mc13783_priv {scalar_t__ adc_ssi_port; scalar_t__ dac_ssi_port; int mc13xxx; } ;
struct TYPE_2__ {int parent; } ;


 int AUDIO_SSI_SEL ;
 int MC13783_AUDIO_CODEC ;
 int MC13783_AUDIO_DAC ;
 int MC13783_AUDIO_RX0 ;
 int MC13783_AUDIO_RX1 ;
 int MC13783_AUDIO_TX ;
 scalar_t__ MC13783_SSI1_PORT ;
 int MC13783_SSI_NETWORK ;
 int dev_get_regmap (int ,int *) ;
 int mc13xxx_reg_rmw (int ,int ,int ,int ) ;
 int mc13xxx_reg_write (int ,int ,int) ;
 struct mc13783_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int mc13783_probe(struct snd_soc_component *component)
{
 struct mc13783_priv *priv = snd_soc_component_get_drvdata(component);

 snd_soc_component_init_regmap(component,
      dev_get_regmap(component->dev->parent, ((void*)0)));


 mc13xxx_reg_write(priv->mc13xxx, MC13783_AUDIO_RX0, 0x25893);
 mc13xxx_reg_write(priv->mc13xxx, MC13783_AUDIO_RX1, 0x00d35A);
 mc13xxx_reg_write(priv->mc13xxx, MC13783_AUDIO_TX, 0x420000);
 mc13xxx_reg_write(priv->mc13xxx, MC13783_SSI_NETWORK, 0x013060);
 mc13xxx_reg_write(priv->mc13xxx, MC13783_AUDIO_CODEC, 0x180027);
 mc13xxx_reg_write(priv->mc13xxx, MC13783_AUDIO_DAC, 0x0e0004);

 if (priv->adc_ssi_port == MC13783_SSI1_PORT)
  mc13xxx_reg_rmw(priv->mc13xxx, MC13783_AUDIO_CODEC,
    AUDIO_SSI_SEL, 0);
 else
  mc13xxx_reg_rmw(priv->mc13xxx, MC13783_AUDIO_CODEC,
    AUDIO_SSI_SEL, AUDIO_SSI_SEL);

 if (priv->dac_ssi_port == MC13783_SSI1_PORT)
  mc13xxx_reg_rmw(priv->mc13xxx, MC13783_AUDIO_DAC,
    AUDIO_SSI_SEL, 0);
 else
  mc13xxx_reg_rmw(priv->mc13xxx, MC13783_AUDIO_DAC,
    AUDIO_SSI_SEL, AUDIO_SSI_SEL);

 return 0;
}
