
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct fsl_sai {int regmap; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;


 int EINVAL ;
 int FSL_FMT_TRANSMITTER ;




 int FSL_SAI_CR2_MSEL_BUS ;
 int FSL_SAI_CR2_MSEL_MASK ;
 int FSL_SAI_CR2_MSEL_MCLK1 ;
 int FSL_SAI_CR2_MSEL_MCLK2 ;
 int FSL_SAI_CR2_MSEL_MCLK3 ;
 int FSL_SAI_xCR2 (int,unsigned int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_sai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_sai_set_dai_sysclk_tr(struct snd_soc_dai *cpu_dai,
  int clk_id, unsigned int freq, int fsl_dir)
{
 struct fsl_sai *sai = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned int ofs = sai->soc_data->reg_offset;
 bool tx = fsl_dir == FSL_FMT_TRANSMITTER;
 u32 val_cr2 = 0;

 switch (clk_id) {
 case 131:
  val_cr2 |= FSL_SAI_CR2_MSEL_BUS;
  break;
 case 130:
  val_cr2 |= FSL_SAI_CR2_MSEL_MCLK1;
  break;
 case 129:
  val_cr2 |= FSL_SAI_CR2_MSEL_MCLK2;
  break;
 case 128:
  val_cr2 |= FSL_SAI_CR2_MSEL_MCLK3;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(sai->regmap, FSL_SAI_xCR2(tx, ofs),
      FSL_SAI_CR2_MSEL_MASK, val_cr2);

 return 0;
}
