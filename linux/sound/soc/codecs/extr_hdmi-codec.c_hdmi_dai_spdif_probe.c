
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct hdmi_codec_daifmt* playback_dma_data; } ;
struct hdmi_codec_daifmt {int fmt; } ;


 int HDMI_SPDIF ;
 int hdmi_dai_probe (struct snd_soc_dai*) ;

__attribute__((used)) static int hdmi_dai_spdif_probe(struct snd_soc_dai *dai)
{
 struct hdmi_codec_daifmt *cf = dai->playback_dma_data;
 int ret;

 ret = hdmi_dai_probe(dai);
 if (ret)
  return ret;

 cf = dai->playback_dma_data;
 cf->fmt = HDMI_SPDIF;

 return 0;
}
