
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct hda_codec {int dummy; } ;



__attribute__((used)) static int check_slave_present(struct hda_codec *codec,
          void *data, struct snd_kcontrol *sctl)
{
 return 1;
}
