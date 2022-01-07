
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct g12a_tohdmitx_input* playback_dma_data; } ;
struct g12a_tohdmitx_input {unsigned int fmt; } ;



__attribute__((used)) static int g12a_tohdmitx_input_set_fmt(struct snd_soc_dai *dai,
           unsigned int fmt)
{
 struct g12a_tohdmitx_input *data = dai->playback_dma_data;


 data->fmt = fmt;
 return 0;
}
