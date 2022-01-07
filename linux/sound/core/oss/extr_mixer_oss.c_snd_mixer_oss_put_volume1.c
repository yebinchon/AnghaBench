
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {struct slot* private_data; } ;
struct snd_mixer_oss_file {int dummy; } ;
struct slot {int present; int * numid; } ;


 size_t SNDRV_MIXER_OSS_ITEM_CROUTE ;
 size_t SNDRV_MIXER_OSS_ITEM_CSWITCH ;
 size_t SNDRV_MIXER_OSS_ITEM_CVOLUME ;
 size_t SNDRV_MIXER_OSS_ITEM_GLOBAL ;
 size_t SNDRV_MIXER_OSS_ITEM_GROUTE ;
 size_t SNDRV_MIXER_OSS_ITEM_GSWITCH ;
 size_t SNDRV_MIXER_OSS_ITEM_GVOLUME ;
 size_t SNDRV_MIXER_OSS_ITEM_PROUTE ;
 size_t SNDRV_MIXER_OSS_ITEM_PSWITCH ;
 size_t SNDRV_MIXER_OSS_ITEM_PVOLUME ;
 int SNDRV_MIXER_OSS_PRESENT_CROUTE ;
 int SNDRV_MIXER_OSS_PRESENT_CSWITCH ;
 int SNDRV_MIXER_OSS_PRESENT_CVOLUME ;
 int SNDRV_MIXER_OSS_PRESENT_GLOBAL ;
 int SNDRV_MIXER_OSS_PRESENT_GROUTE ;
 int SNDRV_MIXER_OSS_PRESENT_GSWITCH ;
 int SNDRV_MIXER_OSS_PRESENT_GVOLUME ;
 int SNDRV_MIXER_OSS_PRESENT_PROUTE ;
 int SNDRV_MIXER_OSS_PRESENT_PSWITCH ;
 int SNDRV_MIXER_OSS_PRESENT_PVOLUME ;
 int snd_mixer_oss_put_volume1_sw (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int ,int,int,int) ;
 int snd_mixer_oss_put_volume1_vol (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int ,int,int) ;

__attribute__((used)) static int snd_mixer_oss_put_volume1(struct snd_mixer_oss_file *fmixer,
         struct snd_mixer_oss_slot *pslot,
         int left, int right)
{
 struct slot *slot = pslot->private_data;

 if (slot->present & SNDRV_MIXER_OSS_PRESENT_PVOLUME) {
  snd_mixer_oss_put_volume1_vol(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_PVOLUME], left, right);
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_CVOLUME)
   snd_mixer_oss_put_volume1_vol(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CVOLUME], left, right);
 } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_CVOLUME) {
  snd_mixer_oss_put_volume1_vol(fmixer, pslot,
   slot->numid[SNDRV_MIXER_OSS_ITEM_CVOLUME], left, right);
 } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_GVOLUME) {
  snd_mixer_oss_put_volume1_vol(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_GVOLUME], left, right);
 } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_GLOBAL) {
  snd_mixer_oss_put_volume1_vol(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_GLOBAL], left, right);
 }
 if (left || right) {
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_PSWITCH)
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_PSWITCH], left, right, 0);
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_CSWITCH)
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CSWITCH], left, right, 0);
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_GSWITCH)
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_GSWITCH], left, right, 0);
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_PROUTE)
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_PROUTE], left, right, 1);
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_CROUTE)
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CROUTE], left, right, 1);
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_GROUTE)
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_GROUTE], left, right, 1);
 } else {
  if (slot->present & SNDRV_MIXER_OSS_PRESENT_PSWITCH) {
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_PSWITCH], left, right, 0);
  } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_CSWITCH) {
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CSWITCH], left, right, 0);
  } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_GSWITCH) {
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_GSWITCH], left, right, 0);
  } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_PROUTE) {
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_PROUTE], left, right, 1);
  } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_CROUTE) {
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CROUTE], left, right, 1);
  } else if (slot->present & SNDRV_MIXER_OSS_PRESENT_GROUTE) {
   snd_mixer_oss_put_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_GROUTE], left, right, 1);
  }
 }
 return 0;
}
