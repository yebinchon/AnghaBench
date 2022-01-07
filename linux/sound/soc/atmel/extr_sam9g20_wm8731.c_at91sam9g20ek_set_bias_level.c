
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_card {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int mclk ;

__attribute__((used)) static int at91sam9g20ek_set_bias_level(struct snd_soc_card *card,
     struct snd_soc_dapm_context *dapm,
     enum snd_soc_bias_level level)
{
 static int mclk_on;
 int ret = 0;

 switch (level) {
 case 130:
 case 129:
  if (!mclk_on)
   ret = clk_enable(mclk);
  if (ret == 0)
   mclk_on = 1;
  break;

 case 131:
 case 128:
  if (mclk_on)
   clk_disable(mclk);
  mclk_on = 0;
  break;
 }

 return ret;
}
