
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int card; } ;
struct snd_pcm {int dummy; } ;
struct hdac_hdmi_priv {int pcm_list; int chmap; TYPE_1__* dai_map; struct hdac_device* hdev; } ;
struct hdac_hdmi_pcm {int pcm_id; int head; int port_list; int lock; struct snd_soc_jack* jack; scalar_t__ jack_event; int cvt; } ;
struct hdac_device {int dev; } ;
struct TYPE_2__ {int cvt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int *,char*,int,int) ;
 struct hdac_hdmi_pcm* devm_kzalloc (int *,int,int ) ;
 struct snd_pcm* hdac_hdmi_get_pcm_from_id (int ,int) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int snd_hdac_add_chmap_ctls (struct snd_pcm*,int,int *) ;
 struct hdac_hdmi_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int hdac_hdmi_jack_init(struct snd_soc_dai *dai, int device,
    struct snd_soc_jack *jack)
{
 struct snd_soc_component *component = dai->component;
 struct hdac_hdmi_priv *hdmi = snd_soc_component_get_drvdata(component);
 struct hdac_device *hdev = hdmi->hdev;
 struct hdac_hdmi_pcm *pcm;
 struct snd_pcm *snd_pcm;
 int err;





 pcm = devm_kzalloc(&hdev->dev, sizeof(*pcm), GFP_KERNEL);
 if (!pcm)
  return -ENOMEM;
 pcm->pcm_id = device;
 pcm->cvt = hdmi->dai_map[dai->id].cvt;
 pcm->jack_event = 0;
 pcm->jack = jack;
 mutex_init(&pcm->lock);
 INIT_LIST_HEAD(&pcm->port_list);
 snd_pcm = hdac_hdmi_get_pcm_from_id(dai->component->card, device);
 if (snd_pcm) {
  err = snd_hdac_add_chmap_ctls(snd_pcm, device, &hdmi->chmap);
  if (err < 0) {
   dev_err(&hdev->dev,
    "chmap control add failed with err: %d for pcm: %d\n",
    err, device);
   return err;
  }
 }

 list_add_tail(&pcm->head, &hdmi->pcm_list);

 return 0;
}
