
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_chmap_elem {int dummy; } ;
struct snd_pcm {int name; int dev_subclass; scalar_t__ info_flags; struct ct_atc* private_data; } ;
struct ct_atc {struct snd_pcm** pcms; int pci; TYPE_1__* card; } ;
typedef enum CTALSADEVS { ____Placeholder_CTALSADEVS } CTALSADEVS ;
struct TYPE_2__ {int dev; } ;




 int IEC958 ;

 int SNDRV_DMA_TYPE_DEV_SG ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_SUBCLASS_GENERIC_MIX ;

 struct snd_pcm_chmap_elem* clfe_map ;
 int ct_pcm_capture_ops ;
 int ct_pcm_playback_ops ;
 int dev_err (int ,char*,int) ;
 struct snd_pcm_chmap_elem* side_map ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,int ,struct snd_pcm_chmap_elem const*,int,int ,int *) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 struct snd_pcm_chmap_elem* snd_pcm_std_chmaps ;
 int strlcpy (int ,char const*,int) ;
 struct snd_pcm_chmap_elem* surround_map ;

int ct_alsa_pcm_create(struct ct_atc *atc,
         enum CTALSADEVS device,
         const char *device_name)
{
 struct snd_pcm *pcm;
 const struct snd_pcm_chmap_elem *map;
 int chs;
 int err;
 int playback_count, capture_count;

 playback_count = (IEC958 == device) ? 1 : 256;
 capture_count = (130 == device) ? 1 : 0;
 err = snd_pcm_new(atc->card, "ctxfi", device,
     playback_count, capture_count, &pcm);
 if (err < 0) {
  dev_err(atc->card->dev, "snd_pcm_new failed!! Err=%d\n",
   err);
  return err;
 }

 pcm->private_data = atc;
 pcm->info_flags = 0;
 pcm->dev_subclass = SNDRV_PCM_SUBCLASS_GENERIC_MIX;
 strlcpy(pcm->name, device_name, sizeof(pcm->name));

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &ct_pcm_playback_ops);

 if (130 == device)
  snd_pcm_set_ops(pcm,
    SNDRV_PCM_STREAM_CAPTURE, &ct_pcm_capture_ops);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
   snd_dma_pci_data(atc->pci), 128*1024, 128*1024);

 chs = 2;
 switch (device) {
 case 130:
  chs = 8;
  map = snd_pcm_std_chmaps;
  break;
 case 128:
  map = surround_map;
  break;
 case 131:
  map = clfe_map;
  break;
 case 129:
  map = side_map;
  break;
 default:
  map = snd_pcm_std_chmaps;
  break;
 }
 err = snd_pcm_add_chmap_ctls(pcm, SNDRV_PCM_STREAM_PLAYBACK, map, chs,
         0, ((void*)0));
 if (err < 0)
  return err;





 return 0;
}
