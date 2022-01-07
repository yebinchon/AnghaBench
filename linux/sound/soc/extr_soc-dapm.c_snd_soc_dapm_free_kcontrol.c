
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dev; } ;


 int devm_kfree (int ,char const**) ;

__attribute__((used)) static void
snd_soc_dapm_free_kcontrol(struct snd_soc_card *card,
   unsigned long *private_value,
   int num_params,
   const char **w_param_text)
{
 int count;

 devm_kfree(card->dev, (void *)*private_value);

 if (!w_param_text)
  return;

 for (count = 0 ; count < num_params; count++)
  devm_kfree(card->dev, (void *)w_param_text[count]);
 devm_kfree(card->dev, w_param_text);
}
