
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transfer_info {int tag; } ;
struct onyx {int mutex; } ;
struct codec_info_item {struct onyx* codec_data; } ;


 int ONYX_MUTE_LEFT ;
 int ONYX_MUTE_RIGHT ;
 int ONYX_REG_DAC_CONTROL ;
 int ONYX_REG_DIG_INFO4 ;
 int ONYX_SPDIF_ENABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int*) ;

__attribute__((used)) static int onyx_usable(struct codec_info_item *cii,
         struct transfer_info *ti,
         struct transfer_info *out)
{
 u8 v;
 struct onyx *onyx = cii->codec_data;
 int spdif_enabled, analog_enabled;

 mutex_lock(&onyx->mutex);
 onyx_read_register(onyx, ONYX_REG_DIG_INFO4, &v);
 spdif_enabled = !!(v & ONYX_SPDIF_ENABLE);
 onyx_read_register(onyx, ONYX_REG_DAC_CONTROL, &v);
 analog_enabled =
  (v & (ONYX_MUTE_RIGHT|ONYX_MUTE_LEFT))
   != (ONYX_MUTE_RIGHT|ONYX_MUTE_LEFT);
 mutex_unlock(&onyx->mutex);

 switch (ti->tag) {
 case 0: return 1;
 case 1: return analog_enabled;
 case 2: return spdif_enabled;
 }
 return 1;
}
