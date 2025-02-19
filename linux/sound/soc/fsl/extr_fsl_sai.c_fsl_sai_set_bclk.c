
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct snd_soc_dai {int dev; } ;
struct fsl_sai {size_t* mclk_id; int regmap; scalar_t__* synchronous; int * mclk_clk; scalar_t__ is_slave_mode; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;


 int EINVAL ;
 int FSL_SAI_CR2_DIV_MASK ;
 size_t FSL_SAI_CR2_MSEL (size_t) ;
 int FSL_SAI_CR2_MSEL_MASK ;
 size_t FSL_SAI_MCLK_MAX ;
 int FSL_SAI_RCR2 (unsigned int) ;
 int FSL_SAI_TCR2 (unsigned int) ;
 size_t RX ;
 size_t TX ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int ,char*,size_t,size_t,size_t) ;
 int dev_err (int ,char*,char,size_t) ;
 int regmap_update_bits (int ,int ,int ,size_t) ;
 struct fsl_sai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_sai_set_bclk(struct snd_soc_dai *dai, bool tx, u32 freq)
{
 struct fsl_sai *sai = snd_soc_dai_get_drvdata(dai);
 unsigned int ofs = sai->soc_data->reg_offset;
 unsigned long clk_rate;
 u32 savediv = 0, ratio, savesub = freq;
 u32 id;
 int ret = 0;


 if (sai->is_slave_mode)
  return 0;

 for (id = 0; id < FSL_SAI_MCLK_MAX; id++) {
  clk_rate = clk_get_rate(sai->mclk_clk[id]);
  if (!clk_rate)
   continue;

  ratio = clk_rate / freq;

  ret = clk_rate - ratio * freq;





  if (ret != 0 && clk_rate / ret < 1000)
   continue;

  dev_dbg(dai->dev,
   "ratio %d for freq %dHz based on clock %ldHz\n",
   ratio, freq, clk_rate);

  if (ratio % 2 == 0 && ratio >= 2 && ratio <= 512)
   ratio /= 2;
  else
   continue;

  if (ret < savesub) {
   savediv = ratio;
   sai->mclk_id[tx] = id;
   savesub = ret;
  }

  if (ret == 0)
   break;
 }

 if (savediv == 0) {
  dev_err(dai->dev, "failed to derive required %cx rate: %d\n",
    tx ? 'T' : 'R', freq);
  return -EINVAL;
 }
 if ((sai->synchronous[TX] && !sai->synchronous[RX]) ||
     (!tx && !sai->synchronous[RX])) {
  regmap_update_bits(sai->regmap, FSL_SAI_RCR2(ofs),
       FSL_SAI_CR2_MSEL_MASK,
       FSL_SAI_CR2_MSEL(sai->mclk_id[tx]));
  regmap_update_bits(sai->regmap, FSL_SAI_RCR2(ofs),
       FSL_SAI_CR2_DIV_MASK, savediv - 1);
 } else if ((sai->synchronous[RX] && !sai->synchronous[TX]) ||
     (tx && !sai->synchronous[TX])) {
  regmap_update_bits(sai->regmap, FSL_SAI_TCR2(ofs),
       FSL_SAI_CR2_MSEL_MASK,
       FSL_SAI_CR2_MSEL(sai->mclk_id[tx]));
  regmap_update_bits(sai->regmap, FSL_SAI_TCR2(ofs),
       FSL_SAI_CR2_DIV_MASK, savediv - 1);
 }

 dev_dbg(dai->dev, "best fit: clock id=%d, div=%d, deviation =%d\n",
   sai->mclk_id[tx], savediv, savesub);

 return 0;
}
