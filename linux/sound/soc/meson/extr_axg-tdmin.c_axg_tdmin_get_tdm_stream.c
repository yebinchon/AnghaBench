
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dai {struct axg_tdm_stream* capture_dma_data; } ;
struct axg_tdm_stream {int dummy; } ;


 struct snd_soc_dai* axg_tdmin_get_be (struct snd_soc_dapm_widget*) ;

__attribute__((used)) static struct axg_tdm_stream *
axg_tdmin_get_tdm_stream(struct snd_soc_dapm_widget *w)
{
 struct snd_soc_dai *be = axg_tdmin_get_be(w);

 if (!be)
  return ((void*)0);

 return be->capture_dma_data;
}
