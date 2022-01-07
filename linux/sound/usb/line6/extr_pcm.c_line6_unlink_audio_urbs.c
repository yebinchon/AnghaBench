
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_line6_pcm {TYPE_1__* line6; } ;
struct line6_pcm_stream {int * urbs; int unlink_urbs; int active_urbs; } ;
struct TYPE_2__ {int iso_buffers; } ;


 int test_and_set_bit (int,int *) ;
 scalar_t__ test_bit (int,int *) ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void line6_unlink_audio_urbs(struct snd_line6_pcm *line6pcm,
        struct line6_pcm_stream *pcms)
{
 int i;

 for (i = 0; i < line6pcm->line6->iso_buffers; i++) {
  if (test_bit(i, &pcms->active_urbs)) {
   if (!test_and_set_bit(i, &pcms->unlink_urbs))
    usb_unlink_urb(pcms->urbs[i]);
  }
 }
}
