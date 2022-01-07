
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ playback_dma_data; scalar_t__ capture_dma_data; } ;


 int axg_tdm_stream_free (scalar_t__) ;

__attribute__((used)) static int axg_tdm_iface_remove_dai(struct snd_soc_dai *dai)
{
 if (dai->capture_dma_data)
  axg_tdm_stream_free(dai->capture_dma_data);

 if (dai->playback_dma_data)
  axg_tdm_stream_free(dai->playback_dma_data);

 return 0;
}
