
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_widget {int ignore_suspend; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; int dev; } ;
struct snd_pcm_substream {int stream; } ;
struct skl_module_cfg {int pipe; } ;
struct skl_dev {int dummy; } ;
struct hdac_ext_stream {int lpib; int dpib; } ;
struct hdac_bus {int remap_addr; } ;
struct TYPE_3__ {int index; } ;


 int AZX_REG_VS_SDXDPIB_XBASE ;
 int AZX_REG_VS_SDXDPIB_XINTERVAL ;
 int EINVAL ;
 int EIO ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 struct hdac_bus* get_bus_ctx (struct snd_pcm_substream*) ;
 struct hdac_ext_stream* get_hdac_ext_stream (struct snd_pcm_substream*) ;
 struct skl_dev* get_skl_ctx (int ) ;
 TYPE_1__* hdac_stream (struct hdac_ext_stream*) ;
 int readl (int) ;
 int skl_decoupled_trigger (struct snd_pcm_substream*,int) ;
 int skl_run_pipe (struct skl_dev*,int ) ;
 int skl_stop_pipe (struct skl_dev*,int ) ;
 struct skl_module_cfg* skl_tplg_fe_get_cpr_module (struct snd_soc_dai*,int ) ;
 int snd_hdac_ext_stream_decouple (struct hdac_bus*,struct hdac_ext_stream*,int) ;
 int snd_hdac_ext_stream_drsm_enable (struct hdac_bus*,int,int) ;
 int snd_hdac_ext_stream_set_dpibr (struct hdac_bus*,struct hdac_ext_stream*,int ) ;
 int snd_hdac_ext_stream_set_lpib (struct hdac_ext_stream*,int ) ;
 int snd_hdac_stream_get_pos_lpib (TYPE_1__*) ;

__attribute__((used)) static int skl_pcm_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *dai)
{
 struct skl_dev *skl = get_skl_ctx(dai->dev);
 struct skl_module_cfg *mconfig;
 struct hdac_bus *bus = get_bus_ctx(substream);
 struct hdac_ext_stream *stream = get_hdac_ext_stream(substream);
 struct snd_soc_dapm_widget *w;
 int ret;

 mconfig = skl_tplg_fe_get_cpr_module(dai, substream->stream);
 if (!mconfig)
  return -EIO;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  w = dai->playback_widget;
 else
  w = dai->capture_widget;

 switch (cmd) {
 case 131:
  if (!w->ignore_suspend) {





   snd_hdac_ext_stream_drsm_enable(bus, 1,
      hdac_stream(stream)->index);
   snd_hdac_ext_stream_set_dpibr(bus, stream,
       stream->lpib);
   snd_hdac_ext_stream_set_lpib(stream, stream->lpib);
  }


 case 130:
 case 132:






  ret = skl_decoupled_trigger(substream, cmd);
  if (ret < 0)
   return ret;
  return skl_run_pipe(skl, mconfig->pipe);
  break;

 case 133:
 case 128:
 case 129:





  ret = skl_stop_pipe(skl, mconfig->pipe);
  if (ret < 0)
   return ret;

  ret = skl_decoupled_trigger(substream, cmd);
  if ((cmd == 128) && !w->ignore_suspend) {

   stream->dpib = readl(bus->remap_addr +
     AZX_REG_VS_SDXDPIB_XBASE +
     (AZX_REG_VS_SDXDPIB_XINTERVAL *
     hdac_stream(stream)->index));

   stream->lpib = snd_hdac_stream_get_pos_lpib(
       hdac_stream(stream));
   snd_hdac_ext_stream_decouple(bus, stream, 0);
  }
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
