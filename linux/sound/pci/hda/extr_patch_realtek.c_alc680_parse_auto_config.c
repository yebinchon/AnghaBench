
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_parse_auto_config (struct hda_codec*,int *,int *) ;

__attribute__((used)) static int alc680_parse_auto_config(struct hda_codec *codec)
{
 return alc_parse_auto_config(codec, ((void*)0), ((void*)0));
}
