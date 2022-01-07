
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {scalar_t__ ignore_suspend; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct skl_dev {int supend_active; } ;
struct hdac_bus {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 struct hdac_bus* dev_get_drvdata (int ) ;

__attribute__((used)) static void skl_set_suspend_active(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai, bool enable)
{
 struct hdac_bus *bus = dev_get_drvdata(dai->dev);
 struct snd_soc_dapm_widget *w;
 struct skl_dev *skl = bus_to_skl(bus);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  w = dai->playback_widget;
 else
  w = dai->capture_widget;

 if (w->ignore_suspend && enable)
  skl->supend_active++;
 else if (w->ignore_suspend && !enable)
  skl->supend_active--;
}
