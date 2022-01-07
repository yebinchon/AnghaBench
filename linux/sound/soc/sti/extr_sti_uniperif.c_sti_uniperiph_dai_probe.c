
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int addr_width; int addr; } ;
struct sti_uniperiph_dai {scalar_t__ stream; TYPE_2__ dma_data; TYPE_1__* uni; } ;
struct sti_uniperiph_data {struct sti_uniperiph_dai dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {int fifo_phys_address; } ;


 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct sti_uniperiph_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,TYPE_2__*,TYPE_2__*) ;
 int sti_uniperiph_dai_create_ctrl (struct snd_soc_dai*) ;

__attribute__((used)) static int sti_uniperiph_dai_probe(struct snd_soc_dai *dai)
{
 struct sti_uniperiph_data *priv = snd_soc_dai_get_drvdata(dai);
 struct sti_uniperiph_dai *dai_data = &priv->dai_data;


 if (priv->dai_data.stream == SNDRV_PCM_STREAM_PLAYBACK)
  snd_soc_dai_init_dma_data(dai, &dai_data->dma_data, ((void*)0));
 else
  snd_soc_dai_init_dma_data(dai, ((void*)0), &dai_data->dma_data);

 dai_data->dma_data.addr = dai_data->uni->fifo_phys_address;
 dai_data->dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

 return sti_uniperiph_dai_create_ctrl(dai);
}
