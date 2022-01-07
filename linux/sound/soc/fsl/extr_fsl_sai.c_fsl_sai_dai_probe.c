
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct fsl_sai {int dma_params_rx; int dma_params_tx; int regmap; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; scalar_t__ fifo_depth; } ;


 int FSL_SAI_CR1_RFW_MASK ;
 int FSL_SAI_CSR_SR ;
 scalar_t__ FSL_SAI_MAXBURST_RX ;
 scalar_t__ FSL_SAI_MAXBURST_TX ;
 int FSL_SAI_RCR1 (unsigned int) ;
 int FSL_SAI_RCSR (unsigned int) ;
 int FSL_SAI_TCR1 (unsigned int) ;
 int FSL_SAI_TCSR (unsigned int) ;
 struct fsl_sai* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,scalar_t__) ;
 int regmap_write (int ,int ,int ) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct fsl_sai*) ;

__attribute__((used)) static int fsl_sai_dai_probe(struct snd_soc_dai *cpu_dai)
{
 struct fsl_sai *sai = dev_get_drvdata(cpu_dai->dev);
 unsigned int ofs = sai->soc_data->reg_offset;


 regmap_write(sai->regmap, FSL_SAI_TCSR(ofs), FSL_SAI_CSR_SR);
 regmap_write(sai->regmap, FSL_SAI_RCSR(ofs), FSL_SAI_CSR_SR);

 regmap_write(sai->regmap, FSL_SAI_TCSR(ofs), 0);
 regmap_write(sai->regmap, FSL_SAI_RCSR(ofs), 0);

 regmap_update_bits(sai->regmap, FSL_SAI_TCR1(ofs),
      FSL_SAI_CR1_RFW_MASK,
      sai->soc_data->fifo_depth - FSL_SAI_MAXBURST_TX);
 regmap_update_bits(sai->regmap, FSL_SAI_RCR1(ofs),
      FSL_SAI_CR1_RFW_MASK, FSL_SAI_MAXBURST_RX - 1);

 snd_soc_dai_init_dma_data(cpu_dai, &sai->dma_params_tx,
    &sai->dma_params_rx);

 snd_soc_dai_set_drvdata(cpu_dai, sai);

 return 0;
}
