
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dummy; } ;
struct atmel_pdmic {TYPE_1__* pdata; } ;
struct TYPE_2__ {int mic_offset; } ;


 int PDMIC_DSPR1 ;
 int PDMIC_DSPR1_OFFSET_MASK ;
 int PDMIC_DSPR1_OFFSET_SHIFT ;
 struct atmel_pdmic* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_card* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int atmel_pdmic_component_probe(struct snd_soc_component *component)
{
 struct snd_soc_card *card = snd_soc_component_get_drvdata(component);
 struct atmel_pdmic *dd = snd_soc_card_get_drvdata(card);

 snd_soc_component_update_bits(component, PDMIC_DSPR1, PDMIC_DSPR1_OFFSET_MASK,
       (u32)(dd->pdata->mic_offset << PDMIC_DSPR1_OFFSET_SHIFT));

 return 0;
}
