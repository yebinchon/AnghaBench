
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct hda_codec {int card; TYPE_1__ core; } ;
typedef int name ;


 int print_codec_info ;
 int snd_card_ro_proc_new (int ,char*,struct hda_codec*,int ) ;
 int snprintf (char*,int,char*,int) ;

int snd_hda_codec_proc_new(struct hda_codec *codec)
{
 char name[32];

 snprintf(name, sizeof(name), "codec#%d", codec->core.addr);
 return snd_card_ro_proc_new(codec->card, name, codec, print_codec_info);
}
