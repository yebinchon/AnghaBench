
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {struct slot* private_data; } ;
struct snd_mixer_oss_file {int dummy; } ;
struct slot {int * numid; } ;


 size_t SNDRV_MIXER_OSS_ITEM_CSWITCH ;
 int snd_mixer_oss_put_volume1_sw (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int ,int,int,int ) ;

__attribute__((used)) static int snd_mixer_oss_put_recsrc1_sw(struct snd_mixer_oss_file *fmixer,
     struct snd_mixer_oss_slot *pslot,
     int active)
{
 struct slot *slot = pslot->private_data;

 snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CSWITCH], active, active, 0);
 return 0;
}
