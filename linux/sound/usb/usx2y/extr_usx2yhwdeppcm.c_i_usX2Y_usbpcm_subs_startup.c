
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usX2Ydev {int prepare_wait_queue; struct snd_usX2Y_substream** subs; struct snd_usX2Y_substream* prepare_subs; } ;
struct urb {scalar_t__ start_frame; struct snd_usX2Y_substream* context; } ;
struct snd_usX2Y_substream {int state; TYPE_1__** urb; struct usX2Ydev* usX2Y; } ;
struct TYPE_2__ {scalar_t__ start_frame; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int atomic_inc (int *) ;
 int i_usX2Y_usbpcm_urb_complete (struct urb*) ;
 int usX2Y_usbpcm_subs_startup_finish (struct usX2Ydev*) ;
 int wake_up (int *) ;

__attribute__((used)) static void i_usX2Y_usbpcm_subs_startup(struct urb *urb)
{
 struct snd_usX2Y_substream *subs = urb->context;
 struct usX2Ydev *usX2Y = subs->usX2Y;
 struct snd_usX2Y_substream *prepare_subs = usX2Y->prepare_subs;
 if (((void*)0) != prepare_subs &&
     urb->start_frame == prepare_subs->urb[0]->start_frame) {
  atomic_inc(&prepare_subs->state);
  if (prepare_subs == usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE]) {
   struct snd_usX2Y_substream *cap_subs2 = usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE + 2];
   if (cap_subs2 != ((void*)0))
    atomic_inc(&cap_subs2->state);
  }
  usX2Y_usbpcm_subs_startup_finish(usX2Y);
  wake_up(&usX2Y->prepare_wait_queue);
 }

 i_usX2Y_usbpcm_urb_complete(urb);
}
