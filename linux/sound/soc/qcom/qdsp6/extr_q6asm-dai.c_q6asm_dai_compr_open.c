
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_1__* driver; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {struct snd_compr_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct TYPE_5__ {int addr; } ;
struct q6asm_dai_rtd {int phys; int audio_client; int lock; TYPE_2__ dma_buffer; struct snd_compr_stream* cstream; } ;
struct q6asm_dai_data {int sid; } ;
struct device {int dummy; } ;
typedef int q6asm_cb ;
struct TYPE_4__ {int id; } ;


 int COMPR_PLAYBACK_MAX_FRAGMENT_SIZE ;
 int COMPR_PLAYBACK_MAX_NUM_FRAGMENTS ;
 int DRV_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LEGACY_PCM_MODE ;
 int PTR_ERR (int ) ;
 int SNDRV_DMA_TYPE_DEV ;
 scalar_t__ compress_event_handler ;
 int dev_err (struct device*,char*) ;
 int kfree (struct q6asm_dai_rtd*) ;
 struct q6asm_dai_rtd* kzalloc (int,int ) ;
 int q6asm_audio_client_alloc (struct device*,int ,struct q6asm_dai_rtd*,int,int ) ;
 int q6asm_audio_client_free (int ) ;
 int snd_compr_set_runtime_buffer (struct snd_compr_stream*,TYPE_2__*) ;
 int snd_dma_alloc_pages (int ,struct device*,int,TYPE_2__*) ;
 struct q6asm_dai_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int q6asm_dai_compr_open(struct snd_compr_stream *stream)
{
 struct snd_soc_pcm_runtime *rtd = stream->private_data;
 struct snd_soc_component *c = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_compr_runtime *runtime = stream->runtime;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct q6asm_dai_data *pdata;
 struct device *dev = c->dev;
 struct q6asm_dai_rtd *prtd;
 int stream_id, size, ret;

 stream_id = cpu_dai->driver->id;
 pdata = snd_soc_component_get_drvdata(c);
 if (!pdata) {
  dev_err(dev, "Drv data not found ..\n");
  return -EINVAL;
 }

 prtd = kzalloc(sizeof(*prtd), GFP_KERNEL);
 if (!prtd)
  return -ENOMEM;

 prtd->cstream = stream;
 prtd->audio_client = q6asm_audio_client_alloc(dev,
     (q6asm_cb)compress_event_handler,
     prtd, stream_id, LEGACY_PCM_MODE);
 if (IS_ERR(prtd->audio_client)) {
  dev_err(dev, "Could not allocate memory\n");
  ret = PTR_ERR(prtd->audio_client);
  goto free_prtd;
 }

 size = COMPR_PLAYBACK_MAX_FRAGMENT_SIZE *
   COMPR_PLAYBACK_MAX_NUM_FRAGMENTS;
 ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
      &prtd->dma_buffer);
 if (ret) {
  dev_err(dev, "Cannot allocate buffer(s)\n");
  goto free_client;
 }

 if (pdata->sid < 0)
  prtd->phys = prtd->dma_buffer.addr;
 else
  prtd->phys = prtd->dma_buffer.addr | (pdata->sid << 32);

 snd_compr_set_runtime_buffer(stream, &prtd->dma_buffer);
 spin_lock_init(&prtd->lock);
 runtime->private_data = prtd;

 return 0;

free_client:
 q6asm_audio_client_free(prtd->audio_client);
free_prtd:
 kfree(prtd);

 return ret;
}
