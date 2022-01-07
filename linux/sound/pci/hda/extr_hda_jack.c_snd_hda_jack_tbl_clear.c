
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_jack_tbl {struct hda_jack_callback* callback; scalar_t__ jack; } ;
struct hda_jack_callback {struct hda_jack_callback* next; } ;
struct TYPE_4__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_2__ jacktbl; int card; TYPE_1__* bus; } ;
struct TYPE_3__ {int shutdown; } ;


 int kfree (struct hda_jack_callback*) ;
 int snd_array_free (TYPE_2__*) ;
 int snd_device_free (int ,scalar_t__) ;

void snd_hda_jack_tbl_clear(struct hda_codec *codec)
{
 struct hda_jack_tbl *jack = codec->jacktbl.list;
 int i;

 for (i = 0; i < codec->jacktbl.used; i++, jack++) {
  struct hda_jack_callback *cb, *next;


  if (!codec->bus->shutdown && jack->jack)
   snd_device_free(codec->card, jack->jack);

  for (cb = jack->callback; cb; cb = next) {
   next = cb->next;
   kfree(cb);
  }
 }
 snd_array_free(&codec->jacktbl);
}
