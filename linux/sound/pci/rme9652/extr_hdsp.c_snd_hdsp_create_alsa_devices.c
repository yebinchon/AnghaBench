
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dev; int longname; int shortname; } ;
struct hdsp {scalar_t__ io_type; int system_sample_rate; int playback_pid; int capture_pid; int state; char* card_name; int irq; int port; int * playback_substream; int * capture_substream; } ;


 scalar_t__ Digiface ;
 scalar_t__ H9652 ;
 int HDSP_InitializationComplete ;
 int dev_err (int ,char*) ;
 int snd_card_register (struct snd_card*) ;
 int snd_hdsp_create_controls (struct snd_card*,struct hdsp*) ;
 int snd_hdsp_create_midi (struct snd_card*,struct hdsp*,int) ;
 int snd_hdsp_create_pcm (struct snd_card*,struct hdsp*) ;
 int snd_hdsp_proc_init (struct hdsp*) ;
 int snd_hdsp_set_defaults (struct hdsp*) ;
 int sprintf (int ,char*,char*,int ,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_hdsp_create_alsa_devices(struct snd_card *card, struct hdsp *hdsp)
{
 int err;

 if ((err = snd_hdsp_create_pcm(card, hdsp)) < 0) {
  dev_err(card->dev,
   "Error creating pcm interface\n");
  return err;
 }


 if ((err = snd_hdsp_create_midi(card, hdsp, 0)) < 0) {
  dev_err(card->dev,
   "Error creating first midi interface\n");
  return err;
 }

 if (hdsp->io_type == Digiface || hdsp->io_type == H9652) {
  if ((err = snd_hdsp_create_midi(card, hdsp, 1)) < 0) {
   dev_err(card->dev,
    "Error creating second midi interface\n");
   return err;
  }
 }

 if ((err = snd_hdsp_create_controls(card, hdsp)) < 0) {
  dev_err(card->dev,
   "Error creating ctl interface\n");
  return err;
 }

 snd_hdsp_proc_init(hdsp);

 hdsp->system_sample_rate = -1;
 hdsp->playback_pid = -1;
 hdsp->capture_pid = -1;
 hdsp->capture_substream = ((void*)0);
 hdsp->playback_substream = ((void*)0);

 if ((err = snd_hdsp_set_defaults(hdsp)) < 0) {
  dev_err(card->dev,
   "Error setting default values\n");
  return err;
 }

 if (!(hdsp->state & HDSP_InitializationComplete)) {
  strcpy(card->shortname, "Hammerfall DSP");
  sprintf(card->longname, "%s at 0x%lx, irq %d", hdsp->card_name,
   hdsp->port, hdsp->irq);

  if ((err = snd_card_register(card)) < 0) {
   dev_err(card->dev,
    "error registering card\n");
   return err;
  }
  hdsp->state |= HDSP_InitializationComplete;
 }

 return 0;
}
