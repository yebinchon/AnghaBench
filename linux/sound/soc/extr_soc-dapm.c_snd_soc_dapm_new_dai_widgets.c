
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int template ;
struct snd_soc_dapm_widget {struct snd_soc_dai* priv; scalar_t__ name; scalar_t__ sname; int id; int reg; } ;
struct snd_soc_dapm_context {scalar_t__ dev; } ;
struct snd_soc_dai {scalar_t__ dev; struct snd_soc_dapm_widget* capture_widget; TYPE_3__* driver; struct snd_soc_dapm_widget* playback_widget; } ;
struct TYPE_5__ {scalar_t__ stream_name; } ;
struct TYPE_4__ {scalar_t__ stream_name; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ playback; } ;


 scalar_t__ IS_ERR (struct snd_soc_dapm_widget*) ;
 int PTR_ERR (struct snd_soc_dapm_widget*) ;
 int SND_SOC_NOPM ;
 int WARN_ON (int) ;
 int dev_dbg (scalar_t__,char*,scalar_t__) ;
 int memset (struct snd_soc_dapm_widget*,int ,int) ;
 int snd_soc_dapm_dai_in ;
 int snd_soc_dapm_dai_out ;
 struct snd_soc_dapm_widget* snd_soc_dapm_new_control_unlocked (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget*) ;

int snd_soc_dapm_new_dai_widgets(struct snd_soc_dapm_context *dapm,
     struct snd_soc_dai *dai)
{
 struct snd_soc_dapm_widget template;
 struct snd_soc_dapm_widget *w;

 WARN_ON(dapm->dev != dai->dev);

 memset(&template, 0, sizeof(template));
 template.reg = SND_SOC_NOPM;

 if (dai->driver->playback.stream_name) {
  template.id = snd_soc_dapm_dai_in;
  template.name = dai->driver->playback.stream_name;
  template.sname = dai->driver->playback.stream_name;

  dev_dbg(dai->dev, "ASoC: adding %s widget\n",
   template.name);

  w = snd_soc_dapm_new_control_unlocked(dapm, &template);
  if (IS_ERR(w))
   return PTR_ERR(w);

  w->priv = dai;
  dai->playback_widget = w;
 }

 if (dai->driver->capture.stream_name) {
  template.id = snd_soc_dapm_dai_out;
  template.name = dai->driver->capture.stream_name;
  template.sname = dai->driver->capture.stream_name;

  dev_dbg(dai->dev, "ASoC: adding %s widget\n",
   template.name);

  w = snd_soc_dapm_new_control_unlocked(dapm, &template);
  if (IS_ERR(w))
   return PTR_ERR(w);

  w->priv = dai;
  dai->capture_widget = w;
 }

 return 0;
}
