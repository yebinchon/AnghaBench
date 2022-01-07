
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * status; } ;
struct stm32_sai_sub_data {int ctrl_lock; TYPE_1__ iec958; } ;
struct snd_pcm_runtime {int rate; } ;


 int IEC958_AES3_CON_FS_176400 ;
 int IEC958_AES3_CON_FS_192000 ;
 int IEC958_AES3_CON_FS_22050 ;
 int IEC958_AES3_CON_FS_24000 ;
 int IEC958_AES3_CON_FS_32000 ;
 int IEC958_AES3_CON_FS_44100 ;
 int IEC958_AES3_CON_FS_48000 ;
 int IEC958_AES3_CON_FS_88200 ;
 int IEC958_AES3_CON_FS_96000 ;
 int IEC958_AES3_CON_FS_NOTID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void stm32_sai_set_iec958_status(struct stm32_sai_sub_data *sai,
     struct snd_pcm_runtime *runtime)
{
 if (!runtime)
  return;


 mutex_lock(&sai->ctrl_lock);
 switch (runtime->rate) {
 case 22050:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_22050;
  break;
 case 44100:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_44100;
  break;
 case 88200:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_88200;
  break;
 case 176400:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_176400;
  break;
 case 24000:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_24000;
  break;
 case 48000:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_48000;
  break;
 case 96000:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_96000;
  break;
 case 192000:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_192000;
  break;
 case 32000:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_32000;
  break;
 default:
  sai->iec958.status[3] = IEC958_AES3_CON_FS_NOTID;
  break;
 }
 mutex_unlock(&sai->ctrl_lock);
}
