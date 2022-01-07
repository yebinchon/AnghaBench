
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct snd_usX2Y_substream {struct urb* completed_urb; int state; struct urb** urb; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int state_PREPARED ;
 int state_PRERUNNING ;
 int state_RUNNING ;


 int usX2Y_hwdep_urb_play_prepare (struct snd_usX2Y_substream*,struct urb*) ;
 int usX2Y_urb_play_retire (struct snd_usX2Y_substream*,struct urb*) ;
 int usX2Y_urb_submit (struct snd_usX2Y_substream*,struct urb*,int) ;
 int usX2Y_usbpcm_urb_capt_iso_advance (struct snd_usX2Y_substream*,struct urb*) ;
 int usX2Y_usbpcm_urb_capt_retire (struct snd_usX2Y_substream*) ;

__attribute__((used)) static inline int usX2Y_usbpcm_usbframe_complete(struct snd_usX2Y_substream *capsubs,
       struct snd_usX2Y_substream *capsubs2,
       struct snd_usX2Y_substream *playbacksubs,
       int frame)
{
 int err, state;
 struct urb *urb = playbacksubs->completed_urb;

 state = atomic_read(&playbacksubs->state);
 if (((void*)0) != urb) {
  if (state == state_RUNNING)
   usX2Y_urb_play_retire(playbacksubs, urb);
  else if (state >= state_PRERUNNING)
   atomic_inc(&playbacksubs->state);
 } else {
  switch (state) {
  case 129:
   urb = playbacksubs->urb[0];
   atomic_inc(&playbacksubs->state);
   break;
  case 128:
   urb = playbacksubs->urb[1];
   atomic_inc(&playbacksubs->state);
   break;
  }
 }
 if (urb) {
  if ((err = usX2Y_hwdep_urb_play_prepare(playbacksubs, urb)) ||
      (err = usX2Y_urb_submit(playbacksubs, urb, frame))) {
   return err;
  }
 }

 playbacksubs->completed_urb = ((void*)0);

 state = atomic_read(&capsubs->state);
 if (state >= state_PREPARED) {
  if (state == state_RUNNING) {
   if ((err = usX2Y_usbpcm_urb_capt_retire(capsubs)))
    return err;
  } else if (state >= state_PRERUNNING)
   atomic_inc(&capsubs->state);
  usX2Y_usbpcm_urb_capt_iso_advance(capsubs, capsubs->completed_urb);
  if (((void*)0) != capsubs2)
   usX2Y_usbpcm_urb_capt_iso_advance(((void*)0), capsubs2->completed_urb);
  if ((err = usX2Y_urb_submit(capsubs, capsubs->completed_urb, frame)))
   return err;
  if (((void*)0) != capsubs2)
   if ((err = usX2Y_urb_submit(capsubs2, capsubs2->completed_urb, frame)))
    return err;
 }
 capsubs->completed_urb = ((void*)0);
 if (((void*)0) != capsubs2)
  capsubs2->completed_urb = ((void*)0);
 return 0;
}
