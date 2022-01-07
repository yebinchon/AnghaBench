
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {unsigned int coef0; } ;


 unsigned int alc_read_coef_idx (struct hda_codec*,int ) ;

__attribute__((used)) static unsigned int alc_get_coef0(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (!spec->coef0)
  spec->coef0 = alc_read_coef_idx(codec, 0);
 return spec->coef0;
}
