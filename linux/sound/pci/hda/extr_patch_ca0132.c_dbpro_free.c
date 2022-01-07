
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {struct ca0132_spec* spec_init_verbs; } ;


 int kfree (struct ca0132_spec*) ;
 int zxr_dbpro_power_state_shutdown (struct hda_codec*) ;

__attribute__((used)) static void dbpro_free(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 zxr_dbpro_power_state_shutdown(codec);

 kfree(spec->spec_init_verbs);
 kfree(codec->spec);
}
