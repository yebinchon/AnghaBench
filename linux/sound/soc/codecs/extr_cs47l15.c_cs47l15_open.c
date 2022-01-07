
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_compr_stream {struct snd_soc_pcm_runtime* private_data; } ;
struct madera_priv {int * adsp; struct madera* madera; } ;
struct madera {int dev; } ;
struct cs47l15 {struct madera_priv core; } ;
struct TYPE_2__ {int name; } ;


 int DRV_NAME ;
 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 struct cs47l15* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int wm_adsp_compr_open (int *,struct snd_compr_stream*) ;

__attribute__((used)) static int cs47l15_open(struct snd_compr_stream *stream)
{
 struct snd_soc_pcm_runtime *rtd = stream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct cs47l15 *cs47l15 = snd_soc_component_get_drvdata(component);
 struct madera_priv *priv = &cs47l15->core;
 struct madera *madera = priv->madera;
 int n_adsp;

 if (strcmp(rtd->codec_dai->name, "cs47l15-dsp-trace") == 0) {
  n_adsp = 0;
 } else {
  dev_err(madera->dev,
   "No suitable compressed stream for DAI '%s'\n",
   rtd->codec_dai->name);
  return -EINVAL;
 }

 return wm_adsp_compr_open(&priv->adsp[n_adsp], stream);
}
