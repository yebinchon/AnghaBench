
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_stream {int pcm_index; TYPE_1__* chip; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_card* card; } ;


 int proc_pcm_format_read ;
 int snd_card_ro_proc_new (struct snd_card*,char*,struct snd_usb_stream*,int ) ;
 int sprintf (char*,char*,int) ;

void snd_usb_proc_pcm_format_add(struct snd_usb_stream *stream)
{
 char name[32];
 struct snd_card *card = stream->chip->card;

 sprintf(name, "stream%d", stream->pcm_index);
 snd_card_ro_proc_new(card, name, stream, proc_pcm_format_read);
}
