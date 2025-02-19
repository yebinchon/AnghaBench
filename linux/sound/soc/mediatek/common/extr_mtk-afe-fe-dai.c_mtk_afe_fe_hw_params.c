
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct mtk_base_afe_memif {TYPE_3__* data; scalar_t__ buffer_size; scalar_t__ phys_buf_addr; } ;
struct mtk_base_afe {int (* memif_fs ) (struct snd_pcm_substream*,int ) ;int regmap; struct mtk_base_afe_memif* memif; } ;
struct TYPE_6__ {scalar_t__ msb_shift; scalar_t__ mono_shift; scalar_t__ fs_shift; int fs_maskbit; int fs_reg; int mono_reg; int msb_reg; scalar_t__ reg_ofs_base; } ;
struct TYPE_5__ {scalar_t__ dma_bytes; int dma_addr; } ;
struct TYPE_4__ {size_t id; } ;


 scalar_t__ AFE_BASE_END_OFFSET ;
 int EINVAL ;
 scalar_t__ lower_32_bits (int ) ;
 int mtk_regmap_update_bits (int ,int ,int,int,scalar_t__) ;
 int mtk_regmap_write (int ,scalar_t__,scalar_t__) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stub1 (struct snd_pcm_substream*,int ) ;
 scalar_t__ upper_32_bits (int ) ;

int mtk_afe_fe_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
 int msb_at_bit33 = 0;
 int ret, fs = 0;

 ret = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(params));
 if (ret < 0)
  return ret;

 msb_at_bit33 = upper_32_bits(substream->runtime->dma_addr) ? 1 : 0;
 memif->phys_buf_addr = lower_32_bits(substream->runtime->dma_addr);
 memif->buffer_size = substream->runtime->dma_bytes;


 mtk_regmap_write(afe->regmap, memif->data->reg_ofs_base,
    memif->phys_buf_addr);

 mtk_regmap_write(afe->regmap,
    memif->data->reg_ofs_base + AFE_BASE_END_OFFSET,
    memif->phys_buf_addr + memif->buffer_size - 1);


 mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
          1, msb_at_bit33, memif->data->msb_shift);


 if (memif->data->mono_shift >= 0) {
  unsigned int mono = (params_channels(params) == 1) ? 1 : 0;

  mtk_regmap_update_bits(afe->regmap, memif->data->mono_reg,
           1, mono, memif->data->mono_shift);
 }


 if (memif->data->fs_shift < 0)
  return 0;

 fs = afe->memif_fs(substream, params_rate(params));

 if (fs < 0)
  return -EINVAL;

 mtk_regmap_update_bits(afe->regmap, memif->data->fs_reg,
          memif->data->fs_maskbit, fs,
          memif->data->fs_shift);

 return 0;
}
