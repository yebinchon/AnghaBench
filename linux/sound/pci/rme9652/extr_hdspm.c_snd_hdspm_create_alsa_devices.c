
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dev; } ;
struct hdspm {int midiPorts; int system_sample_rate; int last_external_sample_rate; int last_internal_sample_rate; int playback_pid; int capture_pid; int * playback_substream; int * capture_substream; } ;


 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int hdspm_update_simple_mixer_controls (struct hdspm*) ;
 int snd_card_register (struct snd_card*) ;
 int snd_hdspm_create_controls (struct snd_card*,struct hdspm*) ;
 int snd_hdspm_create_hwdep (struct snd_card*,struct hdspm*) ;
 int snd_hdspm_create_midi (struct snd_card*,struct hdspm*,int) ;
 int snd_hdspm_create_pcm (struct snd_card*,struct hdspm*) ;
 int snd_hdspm_proc_init (struct hdspm*) ;
 int snd_hdspm_set_defaults (struct hdspm*) ;

__attribute__((used)) static int snd_hdspm_create_alsa_devices(struct snd_card *card,
      struct hdspm *hdspm)
{
 int err, i;

 dev_dbg(card->dev, "Create card...\n");
 err = snd_hdspm_create_pcm(card, hdspm);
 if (err < 0)
  return err;

 i = 0;
 while (i < hdspm->midiPorts) {
  err = snd_hdspm_create_midi(card, hdspm, i);
  if (err < 0) {
   return err;
  }
  i++;
 }

 err = snd_hdspm_create_controls(card, hdspm);
 if (err < 0)
  return err;

 err = snd_hdspm_create_hwdep(card, hdspm);
 if (err < 0)
  return err;

 dev_dbg(card->dev, "proc init...\n");
 snd_hdspm_proc_init(hdspm);

 hdspm->system_sample_rate = -1;
 hdspm->last_external_sample_rate = -1;
 hdspm->last_internal_sample_rate = -1;
 hdspm->playback_pid = -1;
 hdspm->capture_pid = -1;
 hdspm->capture_substream = ((void*)0);
 hdspm->playback_substream = ((void*)0);

 dev_dbg(card->dev, "Set defaults...\n");
 err = snd_hdspm_set_defaults(hdspm);
 if (err < 0)
  return err;

 dev_dbg(card->dev, "Update mixer controls...\n");
 hdspm_update_simple_mixer_controls(hdspm);

 dev_dbg(card->dev, "Initializing complete?\n");

 err = snd_card_register(card);
 if (err < 0) {
  dev_err(card->dev, "error registering card\n");
  return err;
 }

 dev_dbg(card->dev, "... yes now\n");

 return 0;
}
