
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_fill_eapd_coef (struct hda_codec*) ;

__attribute__((used)) static void alc_pre_init(struct hda_codec *codec)
{
 alc_fill_eapd_coef(codec);
}
