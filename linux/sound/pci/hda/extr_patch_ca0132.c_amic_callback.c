
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 int ca0132_alt_select_in (struct hda_codec*) ;
 int ca0132_select_mic (struct hda_codec*) ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;

__attribute__((used)) static void amic_callback(struct hda_codec *codec, struct hda_jack_callback *cb)
{
 struct ca0132_spec *spec = codec->spec;

 if (ca0132_use_alt_functions(spec))
  ca0132_alt_select_in(codec);
 else
  ca0132_select_mic(codec);
}
