
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct fsl_sai {int is_dsp_mode; int is_slave_mode; int regmap; int is_lsb_first; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;


 int EINVAL ;
 int FSL_FMT_TRANSMITTER ;
 int FSL_SAI_CR2_BCD_MSTR ;
 int FSL_SAI_CR2_BCP ;
 int FSL_SAI_CR4_FSD_MSTR ;
 int FSL_SAI_CR4_FSE ;
 int FSL_SAI_CR4_FSP ;
 int FSL_SAI_CR4_MF ;
 int FSL_SAI_xCR2 (int,unsigned int) ;
 int FSL_SAI_xCR4 (int,unsigned int) ;






 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int regmap_update_bits (int ,int ,int,int) ;
 struct fsl_sai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_sai_set_dai_fmt_tr(struct snd_soc_dai *cpu_dai,
    unsigned int fmt, int fsl_dir)
{
 struct fsl_sai *sai = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned int ofs = sai->soc_data->reg_offset;
 bool tx = fsl_dir == FSL_FMT_TRANSMITTER;
 u32 val_cr2 = 0, val_cr4 = 0;

 if (!sai->is_lsb_first)
  val_cr4 |= FSL_SAI_CR4_MF;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:






  val_cr2 |= FSL_SAI_CR2_BCP;
  val_cr4 |= FSL_SAI_CR4_FSE | FSL_SAI_CR4_FSP;
  break;
 case 131:




  val_cr2 |= FSL_SAI_CR2_BCP;
  break;
 case 136:






  val_cr2 |= FSL_SAI_CR2_BCP;
  val_cr4 |= FSL_SAI_CR4_FSE;
  sai->is_dsp_mode = 1;
  break;
 case 135:




  val_cr2 |= FSL_SAI_CR2_BCP;
  sai->is_dsp_mode = 1;
  break;
 case 128:

 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 133:

  val_cr2 ^= FSL_SAI_CR2_BCP;
  val_cr4 ^= FSL_SAI_CR4_FSP;
  break;
 case 132:

  val_cr2 ^= FSL_SAI_CR2_BCP;
  break;
 case 130:

  val_cr4 ^= FSL_SAI_CR4_FSP;
  break;
 case 129:

  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  val_cr2 |= FSL_SAI_CR2_BCD_MSTR;
  val_cr4 |= FSL_SAI_CR4_FSD_MSTR;
  sai->is_slave_mode = 0;
  break;
 case 140:
  sai->is_slave_mode = 1;
  break;
 case 138:
  val_cr2 |= FSL_SAI_CR2_BCD_MSTR;
  sai->is_slave_mode = 0;
  break;
 case 139:
  val_cr4 |= FSL_SAI_CR4_FSD_MSTR;
  sai->is_slave_mode = 1;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(sai->regmap, FSL_SAI_xCR2(tx, ofs),
      FSL_SAI_CR2_BCP | FSL_SAI_CR2_BCD_MSTR, val_cr2);
 regmap_update_bits(sai->regmap, FSL_SAI_xCR4(tx, ofs),
      FSL_SAI_CR4_MF | FSL_SAI_CR4_FSE |
      FSL_SAI_CR4_FSP | FSL_SAI_CR4_FSD_MSTR, val_cr4);

 return 0;
}
