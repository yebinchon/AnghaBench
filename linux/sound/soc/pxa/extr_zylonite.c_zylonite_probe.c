
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 int clk_get_rate (int ) ;
 scalar_t__ clk_pout ;
 int clk_put (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int pout ;

__attribute__((used)) static int zylonite_probe(struct snd_soc_card *card)
{
 int ret;

 if (clk_pout) {
  pout = clk_get(((void*)0), "CLK_POUT");
  if (IS_ERR(pout)) {
   dev_err(card->dev, "Unable to obtain CLK_POUT: %ld\n",
    PTR_ERR(pout));
   return PTR_ERR(pout);
  }

  ret = clk_enable(pout);
  if (ret != 0) {
   dev_err(card->dev, "Unable to enable CLK_POUT: %d\n",
    ret);
   clk_put(pout);
   return ret;
  }

  dev_dbg(card->dev, "MCLK enabled at %luHz\n",
   clk_get_rate(pout));
 }

 return 0;
}
