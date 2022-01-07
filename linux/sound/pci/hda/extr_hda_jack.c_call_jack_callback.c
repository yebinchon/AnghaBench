
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {struct hda_jack_callback* callback; scalar_t__ gated_jack; } ;
struct hda_jack_callback {unsigned int unsol_res; int (* func ) (struct hda_codec*,struct hda_jack_callback*) ;struct hda_jack_tbl* jack; struct hda_jack_callback* next; } ;
struct hda_codec {int dummy; } ;


 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,scalar_t__) ;
 int stub1 (struct hda_codec*,struct hda_jack_callback*) ;
 int stub2 (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void call_jack_callback(struct hda_codec *codec, unsigned int res,
          struct hda_jack_tbl *jack)
{
 struct hda_jack_callback *cb;

 for (cb = jack->callback; cb; cb = cb->next) {
  cb->jack = jack;
  cb->unsol_res = res;
  cb->func(codec, cb);
 }
 if (jack->gated_jack) {
  struct hda_jack_tbl *gated =
   snd_hda_jack_tbl_get(codec, jack->gated_jack);
  if (gated) {
   for (cb = gated->callback; cb; cb = cb->next) {
    cb->jack = gated;
    cb->unsol_res = res;
    cb->func(codec, cb);
   }
  }
 }
}
