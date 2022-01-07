
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adsp; } ;
struct wm5102_priv {TYPE_1__ core; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_compr_stream {struct snd_soc_pcm_runtime* private_data; } ;


 int DRV_NAME ;
 struct wm5102_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int wm_adsp_compr_open (int *,struct snd_compr_stream*) ;

__attribute__((used)) static int wm5102_open(struct snd_compr_stream *stream)
{
 struct snd_soc_pcm_runtime *rtd = stream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct wm5102_priv *priv = snd_soc_component_get_drvdata(component);

 return wm_adsp_compr_open(&priv->core.adsp[0], stream);
}
