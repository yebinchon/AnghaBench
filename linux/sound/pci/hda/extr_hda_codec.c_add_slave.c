
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct hda_codec {int dummy; } ;


 int snd_ctl_add_slave (void*,struct snd_kcontrol*) ;

__attribute__((used)) static int add_slave(struct hda_codec *codec,
       void *data, struct snd_kcontrol *slave)
{
 return snd_ctl_add_slave(data, slave);
}
