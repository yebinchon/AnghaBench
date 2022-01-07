
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {TYPE_1__* aad; } ;
struct TYPE_2__ {int jack_inserted; struct snd_soc_jack* jack; } ;


 int DA7219_AAD_REPORT_ALL_MASK ;
 int DA7219_ACCDET_CONFIG_1 ;
 int DA7219_ACCDET_EN_MASK ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_jack_report (struct snd_soc_jack*,int ,int ) ;

void da7219_aad_jack_det(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);

 da7219->aad->jack = jack;
 da7219->aad->jack_inserted = 0;


 snd_soc_jack_report(jack, 0, DA7219_AAD_REPORT_ALL_MASK);


 snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_1,
       DA7219_ACCDET_EN_MASK,
       (jack ? DA7219_ACCDET_EN_MASK : 0));
}
