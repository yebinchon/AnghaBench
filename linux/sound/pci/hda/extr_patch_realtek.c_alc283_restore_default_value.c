
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc283_coefs ;
 int alc_process_coef_fw (struct hda_codec*,int ) ;

__attribute__((used)) static void alc283_restore_default_value(struct hda_codec *codec)
{
 alc_process_coef_fw(codec, alc283_coefs);
}
