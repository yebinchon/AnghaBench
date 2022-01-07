
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsl_sai {int regmap; int is_slave_mode; scalar_t__* synchronous; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;


 int EINVAL ;
 int FSL_SAI_CR2_SYNC ;
 int FSL_SAI_CSR_FR ;
 int FSL_SAI_CSR_FRDE ;
 int FSL_SAI_CSR_SR ;
 int FSL_SAI_CSR_TERE ;
 int FSL_SAI_CSR_xIE_MASK ;
 int FSL_SAI_FLAGS ;
 int FSL_SAI_RCR2 (unsigned int) ;
 int FSL_SAI_RCSR (unsigned int) ;
 int FSL_SAI_TCR2 (unsigned int) ;
 int FSL_SAI_TCSR (unsigned int) ;
 int FSL_SAI_xCSR (int,unsigned int) ;
 size_t RX ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 size_t TX ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;
 struct fsl_sai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int udelay (int) ;

__attribute__((used)) static int fsl_sai_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *cpu_dai)
{
 struct fsl_sai *sai = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned int ofs = sai->soc_data->reg_offset;

 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 u32 xcsr, count = 100;






 regmap_update_bits(sai->regmap, FSL_SAI_TCR2(ofs), FSL_SAI_CR2_SYNC,
      sai->synchronous[TX] ? FSL_SAI_CR2_SYNC : 0);
 regmap_update_bits(sai->regmap, FSL_SAI_RCR2(ofs), FSL_SAI_CR2_SYNC,
      sai->synchronous[RX] ? FSL_SAI_CR2_SYNC : 0);





 switch (cmd) {
 case 130:
 case 131:
 case 132:
  regmap_update_bits(sai->regmap, FSL_SAI_xCSR(tx, ofs),
       FSL_SAI_CSR_FRDE, FSL_SAI_CSR_FRDE);

  regmap_update_bits(sai->regmap, FSL_SAI_RCSR(ofs),
       FSL_SAI_CSR_TERE, FSL_SAI_CSR_TERE);
  regmap_update_bits(sai->regmap, FSL_SAI_TCSR(ofs),
       FSL_SAI_CSR_TERE, FSL_SAI_CSR_TERE);

  regmap_update_bits(sai->regmap, FSL_SAI_xCSR(tx, ofs),
       FSL_SAI_CSR_xIE_MASK, FSL_SAI_FLAGS);
  break;
 case 129:
 case 128:
 case 133:
  regmap_update_bits(sai->regmap, FSL_SAI_xCSR(tx, ofs),
       FSL_SAI_CSR_FRDE, 0);
  regmap_update_bits(sai->regmap, FSL_SAI_xCSR(tx, ofs),
       FSL_SAI_CSR_xIE_MASK, 0);


  regmap_read(sai->regmap, FSL_SAI_xCSR(!tx, ofs), &xcsr);
  if (!(xcsr & FSL_SAI_CSR_FRDE)) {

   regmap_update_bits(sai->regmap, FSL_SAI_TCSR(ofs),
        FSL_SAI_CSR_TERE, 0);
   regmap_update_bits(sai->regmap, FSL_SAI_RCSR(ofs),
        FSL_SAI_CSR_TERE, 0);


   do {
    udelay(10);
    regmap_read(sai->regmap,
         FSL_SAI_xCSR(tx, ofs), &xcsr);
   } while (--count && xcsr & FSL_SAI_CSR_TERE);

   regmap_update_bits(sai->regmap, FSL_SAI_TCSR(ofs),
        FSL_SAI_CSR_FR, FSL_SAI_CSR_FR);
   regmap_update_bits(sai->regmap, FSL_SAI_RCSR(ofs),
        FSL_SAI_CSR_FR, FSL_SAI_CSR_FR);
   if (!sai->is_slave_mode) {

    regmap_write(sai->regmap, FSL_SAI_TCSR(ofs),
          FSL_SAI_CSR_SR);
    regmap_write(sai->regmap, FSL_SAI_RCSR(ofs),
          FSL_SAI_CSR_SR);

    regmap_write(sai->regmap, FSL_SAI_TCSR(ofs), 0);
    regmap_write(sai->regmap, FSL_SAI_RCSR(ofs), 0);
   }
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
