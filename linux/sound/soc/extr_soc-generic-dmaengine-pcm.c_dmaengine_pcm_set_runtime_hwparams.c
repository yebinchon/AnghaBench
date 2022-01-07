
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hardware {int info; int periods_min; int period_bytes_min; int formats; int fifo_size; int buffer_bytes_max; int period_bytes_max; int periods_max; } ;
struct snd_dmaengine_dai_dma_data {int flags; int fifo_size; } ;
struct dmaengine_pcm {int flags; TYPE_1__* config; struct dma_chan** chan; } ;
struct dma_slave_caps {scalar_t__ residue_granularity; int dst_addr_widths; int src_addr_widths; scalar_t__ cmd_resume; scalar_t__ cmd_pause; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ snd_pcm_format_t ;
typedef int hw ;
struct TYPE_2__ {struct snd_pcm_hardware* pcm_hardware; } ;


 int BIT (int ) ;
 scalar_t__ DMA_RESIDUE_GRANULARITY_SEGMENT ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int SIZE_MAX ;
 scalar_t__ SNDRV_PCM_FORMAT_FIRST ;
 scalar_t__ SNDRV_PCM_FORMAT_LAST ;
 int SNDRV_PCM_INFO_BATCH ;
 int SNDRV_PCM_INFO_INTERLEAVED ;
 int SNDRV_PCM_INFO_MMAP ;
 int SNDRV_PCM_INFO_MMAP_VALID ;
 int SNDRV_PCM_INFO_PAUSE ;
 int SNDRV_PCM_INFO_RESUME ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_DMAENGINE_PCM_DAI_FLAG_PACK ;
 int SND_DMAENGINE_PCM_DRV_NAME ;
 int SND_DMAENGINE_PCM_FLAG_NO_RESIDUE ;
 int UINT_MAX ;
 int dma_get_max_seg_size (struct device*) ;
 int dma_get_slave_caps (struct dma_chan*,struct dma_slave_caps*) ;
 struct device* dmaengine_dma_dev (struct dmaengine_pcm*,struct snd_pcm_substream*) ;
 int memset (struct snd_pcm_hardware*,int ,int) ;
 int pcm_format_to_bits (scalar_t__) ;
 int snd_pcm_format_physical_width (scalar_t__) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,struct snd_pcm_hardware*) ;
 struct dmaengine_pcm* soc_component_to_pcm (struct snd_soc_component*) ;

__attribute__((used)) static int dmaengine_pcm_set_runtime_hwparams(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, SND_DMAENGINE_PCM_DRV_NAME);
 struct dmaengine_pcm *pcm = soc_component_to_pcm(component);
 struct device *dma_dev = dmaengine_dma_dev(pcm, substream);
 struct dma_chan *chan = pcm->chan[substream->stream];
 struct snd_dmaengine_dai_dma_data *dma_data;
 struct dma_slave_caps dma_caps;
 struct snd_pcm_hardware hw;
 u32 addr_widths = BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
     BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
     BIT(DMA_SLAVE_BUSWIDTH_4_BYTES);
 snd_pcm_format_t i;
 int ret;

 if (pcm->config && pcm->config->pcm_hardware)
  return snd_soc_set_runtime_hwparams(substream,
    pcm->config->pcm_hardware);

 dma_data = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);

 memset(&hw, 0, sizeof(hw));
 hw.info = SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_MMAP_VALID |
   SNDRV_PCM_INFO_INTERLEAVED;
 hw.periods_min = 2;
 hw.periods_max = UINT_MAX;
 hw.period_bytes_min = 256;
 hw.period_bytes_max = dma_get_max_seg_size(dma_dev);
 hw.buffer_bytes_max = SIZE_MAX;
 hw.fifo_size = dma_data->fifo_size;

 if (pcm->flags & SND_DMAENGINE_PCM_FLAG_NO_RESIDUE)
  hw.info |= SNDRV_PCM_INFO_BATCH;

 ret = dma_get_slave_caps(chan, &dma_caps);
 if (ret == 0) {
  if (dma_caps.cmd_pause && dma_caps.cmd_resume)
   hw.info |= SNDRV_PCM_INFO_PAUSE | SNDRV_PCM_INFO_RESUME;
  if (dma_caps.residue_granularity <= DMA_RESIDUE_GRANULARITY_SEGMENT)
   hw.info |= SNDRV_PCM_INFO_BATCH;

  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   addr_widths = dma_caps.dst_addr_widths;
  else
   addr_widths = dma_caps.src_addr_widths;
 }







 if (!(dma_data->flags & SND_DMAENGINE_PCM_DAI_FLAG_PACK))
  for (i = SNDRV_PCM_FORMAT_FIRST; i <= SNDRV_PCM_FORMAT_LAST; i++) {
   int bits = snd_pcm_format_physical_width(i);





   switch (bits) {
   case 8:
   case 16:
   case 24:
   case 32:
   case 64:
    if (addr_widths & (1 << (bits / 8)))
     hw.formats |= pcm_format_to_bits(i);
    break;
   default:

    break;
   }
  }

 return snd_soc_set_runtime_hwparams(substream, &hw);
}
