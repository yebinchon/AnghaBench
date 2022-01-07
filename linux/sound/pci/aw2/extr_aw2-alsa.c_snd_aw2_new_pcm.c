
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {struct aw2_pcm_device* private_data; int name; } ;
struct aw2_pcm_device {size_t stream_number; struct aw2* chip; struct snd_pcm* pcm; } ;
struct aw2 {TYPE_1__* card; int pci; struct aw2_pcm_device* device_capture; struct aw2_pcm_device* device_playback; } ;
struct TYPE_3__ {int dev; } ;


 size_t NUM_STREAM_CAPTURE_ANA ;
 size_t NUM_STREAM_PLAYBACK_ANA ;
 size_t NUM_STREAM_PLAYBACK_DIG ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int aw2_control ;
 int dev_err (int ,char*,int) ;
 int snd_aw2_capture_ops ;
 int snd_aw2_playback_ops ;
 int snd_ctl_add (TYPE_1__*,int ) ;
 int snd_ctl_new1 (int *,struct aw2*) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_aw2_new_pcm(struct aw2 *chip)
{
 struct snd_pcm *pcm_playback_ana;
 struct snd_pcm *pcm_playback_num;
 struct snd_pcm *pcm_capture;
 struct aw2_pcm_device *pcm_device;
 int err = 0;



 err = snd_pcm_new(chip->card, "Audiowerk2 analog playback", 0, 1, 0,
     &pcm_playback_ana);
 if (err < 0) {
  dev_err(chip->card->dev, "snd_pcm_new error (0x%X)\n", err);
  return err;
 }


 pcm_device = &chip->device_playback[NUM_STREAM_PLAYBACK_ANA];


 strcpy(pcm_playback_ana->name, "Analog playback");

 pcm_playback_ana->private_data = pcm_device;

 snd_pcm_set_ops(pcm_playback_ana, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_aw2_playback_ops);

 pcm_device->pcm = pcm_playback_ana;


 pcm_device->chip = chip;

 pcm_device->stream_number = NUM_STREAM_PLAYBACK_ANA;



 snd_pcm_lib_preallocate_pages_for_all(pcm_playback_ana,
           SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           64 * 1024, 64 * 1024);

 err = snd_pcm_new(chip->card, "Audiowerk2 digital playback", 1, 1, 0,
     &pcm_playback_num);

 if (err < 0) {
  dev_err(chip->card->dev, "snd_pcm_new error (0x%X)\n", err);
  return err;
 }

 pcm_device = &chip->device_playback[NUM_STREAM_PLAYBACK_DIG];


 strcpy(pcm_playback_num->name, "Digital playback");

 pcm_playback_num->private_data = pcm_device;

 snd_pcm_set_ops(pcm_playback_num, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_aw2_playback_ops);

 pcm_device->pcm = pcm_playback_num;


 pcm_device->chip = chip;

 pcm_device->stream_number = NUM_STREAM_PLAYBACK_DIG;



 snd_pcm_lib_preallocate_pages_for_all(pcm_playback_num,
           SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           64 * 1024, 64 * 1024);

 err = snd_pcm_new(chip->card, "Audiowerk2 capture", 2, 0, 1,
     &pcm_capture);

 if (err < 0) {
  dev_err(chip->card->dev, "snd_pcm_new error (0x%X)\n", err);
  return err;
 }


 pcm_device = &chip->device_capture[NUM_STREAM_CAPTURE_ANA];


 strcpy(pcm_capture->name, "Capture");

 pcm_capture->private_data = pcm_device;

 snd_pcm_set_ops(pcm_capture, SNDRV_PCM_STREAM_CAPTURE,
   &snd_aw2_capture_ops);

 pcm_device->pcm = pcm_capture;


 pcm_device->chip = chip;

 pcm_device->stream_number = NUM_STREAM_CAPTURE_ANA;



 snd_pcm_lib_preallocate_pages_for_all(pcm_capture,
           SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           64 * 1024, 64 * 1024);


 err = snd_ctl_add(chip->card, snd_ctl_new1(&aw2_control, chip));
 if (err < 0) {
  dev_err(chip->card->dev, "snd_ctl_add error (0x%X)\n", err);
  return err;
 }

 return 0;
}
