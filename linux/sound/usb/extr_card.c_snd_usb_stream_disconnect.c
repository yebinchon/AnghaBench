
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {int interface; int * sync_endpoint; int * data_endpoint; int num_formats; } ;
struct snd_usb_stream {struct snd_usb_substream* substream; } ;



__attribute__((used)) static void snd_usb_stream_disconnect(struct snd_usb_stream *as)
{
 int idx;
 struct snd_usb_substream *subs;

 for (idx = 0; idx < 2; idx++) {
  subs = &as->substream[idx];
  if (!subs->num_formats)
   continue;
  subs->interface = -1;
  subs->data_endpoint = ((void*)0);
  subs->sync_endpoint = ((void*)0);
 }
}
