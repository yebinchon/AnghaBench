
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct i2s_stream_instance {int dummy; } ;
struct i2s_dev_data {scalar_t__ acp3x_base; int * capture_stream; int * play_stream; } ;
struct TYPE_2__ {struct i2s_stream_instance* private_data; } ;


 int DRV_NAME ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct i2s_dev_data* dev_get_drvdata (int ) ;
 int kfree (struct i2s_stream_instance*) ;
 scalar_t__ mmACP_EXTERNAL_INTR_ENB ;
 int rv_writel (int ,scalar_t__) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int acp3x_dma_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *prtd = substream->private_data;
 struct i2s_stream_instance *rtd = substream->runtime->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(prtd,
            DRV_NAME);
 struct i2s_dev_data *adata = dev_get_drvdata(component->dev);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  adata->play_stream = ((void*)0);
 else
  adata->capture_stream = ((void*)0);




 if (!adata->play_stream && !adata->capture_stream)
  rv_writel(0, adata->acp3x_base + mmACP_EXTERNAL_INTR_ENB);
 kfree(rtd);
 return 0;
}
