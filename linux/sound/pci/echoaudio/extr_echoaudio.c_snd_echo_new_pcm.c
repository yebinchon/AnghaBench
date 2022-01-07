
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; struct echoaudio* private_data; } ;
struct echoaudio {int pci; TYPE_1__* card; struct snd_pcm* digital_pcm; struct snd_pcm* analog_pcm; } ;
struct TYPE_2__ {int shortname; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int analog_capture_ops ;
 int analog_playback_ops ;
 int digital_capture_ops ;
 int digital_playback_ops ;
 int num_analog_busses_in (struct echoaudio*) ;
 int num_analog_busses_out (struct echoaudio*) ;
 int num_digital_busses_in (struct echoaudio*) ;
 int num_digital_busses_out (struct echoaudio*) ;
 int num_pipes_out (struct echoaudio*) ;
 int snd_dma_pci_data (int ) ;
 int snd_echo_preallocate_pages (struct snd_pcm*,int ) ;
 int snd_pcm_new (TYPE_1__*,char*,int,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_echo_new_pcm(struct echoaudio *chip)
{
 struct snd_pcm *pcm;
 int err;
 if ((err = snd_pcm_new(chip->card, "Analog PCM", 0,
          num_analog_busses_out(chip),
          num_analog_busses_in(chip), &pcm)) < 0)
  return err;
 pcm->private_data = chip;
 chip->analog_pcm = pcm;
 strcpy(pcm->name, chip->card->shortname);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &analog_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &analog_capture_ops);
 if ((err = snd_echo_preallocate_pages(pcm, snd_dma_pci_data(chip->pci))) < 0)
  return err;
 return 0;
}
