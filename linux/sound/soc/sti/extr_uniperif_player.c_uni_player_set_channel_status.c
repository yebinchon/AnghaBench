
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {scalar_t__ encoding_mode; TYPE_1__ iec958; } ;
struct uniperif {scalar_t__ ver; int ctrl_lock; TYPE_2__ stream_settings; } ;
struct snd_pcm_runtime {int rate; } ;


 int IEC958_AES0_NONAUDIO ;
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
 int SET_UNIPERIF_BIT_CONTROL_CHL_STS_UPDATE (struct uniperif*) ;
 int SET_UNIPERIF_CHANNEL_STA_REGN (struct uniperif*,int,unsigned int) ;
 int SET_UNIPERIF_CONFIG_CHL_STS_UPDATE (struct uniperif*) ;
 int SET_UNIPERIF_USER_VALIDITY_VALIDITY_LR (struct uniperif*,int) ;
 scalar_t__ SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0 ;
 scalar_t__ UNIPERIF_IEC958_ENCODING_MODE_ENCODED ;
 scalar_t__ UNIPERIF_IEC958_ENCODING_MODE_PCM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void uni_player_set_channel_status(struct uniperif *player,
       struct snd_pcm_runtime *runtime)
{
 int n;
 unsigned int status;






 mutex_lock(&player->ctrl_lock);
 if (runtime) {
  switch (runtime->rate) {
  case 22050:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_22050;
   break;
  case 44100:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_44100;
   break;
  case 88200:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_88200;
   break;
  case 176400:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_176400;
   break;
  case 24000:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_24000;
   break;
  case 48000:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_48000;
   break;
  case 96000:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_96000;
   break;
  case 192000:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_192000;
   break;
  case 32000:
   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_32000;
   break;
  default:

   player->stream_settings.iec958.status[3] =
      IEC958_AES3_CON_FS_NOTID;
   break;
  }
 }




 if (player->stream_settings.iec958.status[0] & IEC958_AES0_NONAUDIO)
  player->stream_settings.encoding_mode =
   UNIPERIF_IEC958_ENCODING_MODE_ENCODED;
 else
  player->stream_settings.encoding_mode =
   UNIPERIF_IEC958_ENCODING_MODE_PCM;

 if (player->stream_settings.encoding_mode ==
  UNIPERIF_IEC958_ENCODING_MODE_PCM)

  SET_UNIPERIF_USER_VALIDITY_VALIDITY_LR(player, 0);
 else

  SET_UNIPERIF_USER_VALIDITY_VALIDITY_LR(player, 1);


 for (n = 0; n < 6; ++n) {
  status =
  player->stream_settings.iec958.status[0 + (n * 4)] & 0xf;
  status |=
  player->stream_settings.iec958.status[1 + (n * 4)] << 8;
  status |=
  player->stream_settings.iec958.status[2 + (n * 4)] << 16;
  status |=
  player->stream_settings.iec958.status[3 + (n * 4)] << 24;
  SET_UNIPERIF_CHANNEL_STA_REGN(player, n, status);
 }
 mutex_unlock(&player->ctrl_lock);


 if (player->ver < SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0)
  SET_UNIPERIF_CONFIG_CHL_STS_UPDATE(player);
 else
  SET_UNIPERIF_BIT_CONTROL_CHL_STS_UPDATE(player);
}
