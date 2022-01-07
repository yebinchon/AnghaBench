
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; } ;
struct snd_pcm_substream {int dummy; } ;
struct hdac_hdmi_priv {struct hdac_hdmi_dai_port_map* dai_map; } ;
struct hdac_hdmi_pcm {int chmap_set; int lock; scalar_t__ channels; int chmap; } ;
struct hdac_hdmi_dai_port_map {int * port; int cvt; } ;


 struct hdac_hdmi_pcm* hdac_hdmi_get_pcm_from_cvt (struct hdac_hdmi_priv*,int ) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hdac_hdmi_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void hdac_hdmi_pcm_close(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct hdac_hdmi_priv *hdmi = snd_soc_dai_get_drvdata(dai);
 struct hdac_hdmi_dai_port_map *dai_map;
 struct hdac_hdmi_pcm *pcm;

 dai_map = &hdmi->dai_map[dai->id];

 pcm = hdac_hdmi_get_pcm_from_cvt(hdmi, dai_map->cvt);

 if (pcm) {
  mutex_lock(&pcm->lock);
  pcm->chmap_set = 0;
  memset(pcm->chmap, 0, sizeof(pcm->chmap));
  pcm->channels = 0;
  mutex_unlock(&pcm->lock);
 }

 if (dai_map->port)
  dai_map->port = ((void*)0);
}
