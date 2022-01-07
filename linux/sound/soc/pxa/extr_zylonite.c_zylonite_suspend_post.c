
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;


 int clk_disable (int ) ;
 scalar_t__ clk_pout ;
 int pout ;

__attribute__((used)) static int zylonite_suspend_post(struct snd_soc_card *card)
{
 if (clk_pout)
  clk_disable(pout);

 return 0;
}
