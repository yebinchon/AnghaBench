
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ status; int uid_right_connector; int uid_left_connector; } ;
struct snd_mixart {size_t* monitoring_volume; int chip_idx; TYPE_2__* card; int mgr; int * monitoring_active; TYPE_1__ pipe_out_ana; } ;
struct mixart_set_out_audio_level {int valid_mask1; int monitor_mute1; int monitor_level; } ;
struct mixart_msg {int size; struct mixart_set_out_audio_level* data; int message_id; int uid; } ;
typedef int resp ;
typedef int audio_level ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int MIXART_AUDIO_LEVEL_MONITOR_MASK ;
 int MIXART_AUDIO_LEVEL_MUTE_M1_MASK ;
 int MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL ;
 scalar_t__ PIPE_UNDEFINED ;
 int dev_dbg (int ,char*,int ,scalar_t__) ;
 int memset (struct mixart_set_out_audio_level*,int ,int) ;
 int * mixart_digital_level ;
 int snd_mixart_send_msg (int ,struct mixart_msg*,int,scalar_t__*) ;

__attribute__((used)) static int mixart_update_monitoring(struct snd_mixart* chip, int channel)
{
 int err;
 struct mixart_msg request;
 struct mixart_set_out_audio_level audio_level;
 u32 resp = 0;

 if(chip->pipe_out_ana.status == PIPE_UNDEFINED)
  return -EINVAL;

 if(!channel) request.uid = chip->pipe_out_ana.uid_left_connector;
 else request.uid = chip->pipe_out_ana.uid_right_connector;
 request.message_id = MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL;
 request.data = &audio_level;
 request.size = sizeof(audio_level);

 memset(&audio_level, 0, sizeof(audio_level));
 audio_level.valid_mask1 = MIXART_AUDIO_LEVEL_MONITOR_MASK | MIXART_AUDIO_LEVEL_MUTE_M1_MASK;
 audio_level.monitor_level = mixart_digital_level[chip->monitoring_volume[channel!=0]];
 audio_level.monitor_mute1 = !chip->monitoring_active[channel!=0];

 err = snd_mixart_send_msg(chip->mgr, &request, sizeof(resp), &resp);
 if((err<0) || resp) {
  dev_dbg(chip->card->dev,
   "error MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL card(%d) resp(%x)\n",
   chip->chip_idx, resp);
  return -EINVAL;
 }
 return 0;
}
