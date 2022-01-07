
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {unsigned int mclk_freq; int dev; int mclk; } ;


 scalar_t__ IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int devm_clk_get (int ,char*) ;

__attribute__((used)) static int nau8825_mclk_prepare(struct nau8825 *nau8825, unsigned int freq)
{
 int ret = 0;

 nau8825->mclk = devm_clk_get(nau8825->dev, "mclk");
 if (IS_ERR(nau8825->mclk)) {
  dev_info(nau8825->dev, "No 'mclk' clock found, assume MCLK is managed externally");
  return 0;
 }

 if (!nau8825->mclk_freq) {
  ret = clk_prepare_enable(nau8825->mclk);
  if (ret) {
   dev_err(nau8825->dev, "Unable to prepare codec mclk\n");
   return ret;
  }
 }

 if (nau8825->mclk_freq != freq) {
  freq = clk_round_rate(nau8825->mclk, freq);
  ret = clk_set_rate(nau8825->mclk, freq);
  if (ret) {
   dev_err(nau8825->dev, "Unable to set mclk rate\n");
   return ret;
  }
  nau8825->mclk_freq = freq;
 }

 return 0;
}
