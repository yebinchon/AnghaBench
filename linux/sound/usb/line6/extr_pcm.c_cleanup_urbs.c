
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line6_pcm_stream {scalar_t__* urbs; } ;


 int kfree (scalar_t__*) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void cleanup_urbs(struct line6_pcm_stream *pcms, int iso_buffers)
{
 int i;


 if (pcms->urbs == ((void*)0))
  return;

 for (i = 0; i < iso_buffers; i++) {
  if (pcms->urbs[i]) {
   usb_kill_urb(pcms->urbs[i]);
   usb_free_urb(pcms->urbs[i]);
  }
 }
 kfree(pcms->urbs);
 pcms->urbs = ((void*)0);
}
