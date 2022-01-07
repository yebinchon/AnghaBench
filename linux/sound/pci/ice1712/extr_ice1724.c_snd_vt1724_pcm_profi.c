
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ice1712* private_data; } ;
struct TYPE_2__ {int* data; } ;
struct snd_ice1712 {struct snd_pcm* pcm_pro; int pci; int card; TYPE_1__ eeprom; } ;


 size_t ICE_EEP2_SYSCONF ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int VT1724_CFG_ADC_MASK ;
 int VT1724_CFG_ADC_NONE ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_vt1724_capture_pro_ops ;
 int snd_vt1724_playback_pro_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_vt1724_pcm_profi(struct snd_ice1712 *ice, int device)
{
 struct snd_pcm *pcm;
 int capt, err;

 if ((ice->eeprom.data[ICE_EEP2_SYSCONF] & VT1724_CFG_ADC_MASK) ==
     VT1724_CFG_ADC_NONE)
  capt = 0;
 else
  capt = 1;
 err = snd_pcm_new(ice->card, "ICE1724", device, 1, capt, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_vt1724_playback_pro_ops);
 if (capt)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_vt1724_capture_pro_ops);

 pcm->private_data = ice;
 pcm->info_flags = 0;
 strcpy(pcm->name, "ICE1724");

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(ice->pci),
           256*1024, 256*1024);

 ice->pcm_pro = pcm;

 return 0;
}
