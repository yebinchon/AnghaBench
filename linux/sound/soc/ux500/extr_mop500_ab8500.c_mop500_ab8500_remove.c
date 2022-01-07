
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct mop500_ab8500_drvdata {int * clk_ptr_intclk; int * clk_ptr_ulpclk; int * clk_ptr_sysclk; } ;


 int clk_put (int *) ;
 struct mop500_ab8500_drvdata* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct mop500_ab8500_drvdata*) ;

void mop500_ab8500_remove(struct snd_soc_card *card)
{
 struct mop500_ab8500_drvdata *drvdata = snd_soc_card_get_drvdata(card);

 if (drvdata->clk_ptr_sysclk != ((void*)0))
  clk_put(drvdata->clk_ptr_sysclk);
 if (drvdata->clk_ptr_ulpclk != ((void*)0))
  clk_put(drvdata->clk_ptr_ulpclk);
 if (drvdata->clk_ptr_intclk != ((void*)0))
  clk_put(drvdata->clk_ptr_intclk);

 snd_soc_card_set_drvdata(card, drvdata);
}
