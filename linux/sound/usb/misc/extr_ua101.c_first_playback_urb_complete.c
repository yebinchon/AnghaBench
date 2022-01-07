
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int (* complete ) (struct urb*) ;struct ua101* context; } ;
struct ua101 {int alsa_playback_wait; int states; } ;


 int PLAYBACK_URB_COMPLETED ;
 int playback_urb_complete (struct urb*) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void first_playback_urb_complete(struct urb *urb)
{
 struct ua101 *ua = urb->context;

 urb->complete = playback_urb_complete;
 playback_urb_complete(urb);

 set_bit(PLAYBACK_URB_COMPLETED, &ua->states);
 wake_up(&ua->alsa_playback_wait);
}
