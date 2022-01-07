
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int mclk_rate; scalar_t__ sai_mclk; int regmap; } ;
struct snd_soc_dai {int dev; } ;


 int EBUSY ;
 int SAI_XCR1_NODIV ;
 int SND_SOC_CLOCK_OUT ;
 int STM_SAI_CR1_REGX ;
 int clk_rate_exclusive_put (scalar_t__) ;
 int clk_set_rate_exclusive (scalar_t__,unsigned int) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stm32_sai_set_parent_clock (struct stm32_sai_sub_data*,unsigned int) ;

__attribute__((used)) static int stm32_sai_set_sysclk(struct snd_soc_dai *cpu_dai,
    int clk_id, unsigned int freq, int dir)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int ret;

 if (dir == SND_SOC_CLOCK_OUT && sai->sai_mclk) {
  ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
      SAI_XCR1_NODIV,
      freq ? 0 : SAI_XCR1_NODIV);
  if (ret < 0)
   return ret;


  if (!freq) {

   if (sai->mclk_rate) {
    clk_rate_exclusive_put(sai->sai_mclk);
    sai->mclk_rate = 0;
   }
   return 0;
  }


  ret = stm32_sai_set_parent_clock(sai, freq);
  if (ret)
   return ret;

  ret = clk_set_rate_exclusive(sai->sai_mclk, freq);
  if (ret) {
   dev_err(cpu_dai->dev,
    ret == -EBUSY ?
    "Active streams have incompatible rates" :
    "Could not set mclk rate\n");
   return ret;
  }

  dev_dbg(cpu_dai->dev, "SAI MCLK frequency is %uHz\n", freq);
  sai->mclk_rate = freq;
 }

 return 0;
}
