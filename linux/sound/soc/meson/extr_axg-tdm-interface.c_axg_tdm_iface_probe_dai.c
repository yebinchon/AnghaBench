
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {void* playback_dma_data; scalar_t__ playback_widget; void* capture_dma_data; scalar_t__ capture_widget; } ;
struct axg_tdm_iface {int dummy; } ;


 int ENOMEM ;
 int axg_tdm_iface_remove_dai (struct snd_soc_dai*) ;
 void* axg_tdm_stream_alloc (struct axg_tdm_iface*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_probe_dai(struct snd_soc_dai *dai)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);

 if (dai->capture_widget) {
  dai->capture_dma_data = axg_tdm_stream_alloc(iface);
  if (!dai->capture_dma_data)
   return -ENOMEM;
 }

 if (dai->playback_widget) {
  dai->playback_dma_data = axg_tdm_stream_alloc(iface);
  if (!dai->playback_dma_data) {
   axg_tdm_iface_remove_dai(dai);
   return -ENOMEM;
  }
 }

 return 0;
}
