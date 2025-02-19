
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_mixart {size_t* analog_capture_volume; size_t* analog_playback_volume; int chip_idx; TYPE_2__* card; int mgr; int uid_out_analog_physio; int uid_in_analog_physio; scalar_t__* analog_playback_active; } ;
struct mixart_return_uid {scalar_t__ error_code; } ;
struct mixart_msg {int size; struct mixart_io_level* data; int message_id; int uid; } ;
struct mixart_io_level {int channel; TYPE_1__* level; } ;
typedef int resp ;
typedef int io_level ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {void* analog_level; } ;


 int EINVAL ;
 size_t MIXART_ANALOG_PLAYBACK_LEVEL_MIN ;
 int MSG_PHYSICALIO_SET_LEVEL ;
 int dev_dbg (int ,char*,int ,int,scalar_t__) ;
 int memset (struct mixart_io_level*,int ,int) ;
 void** mixart_analog_level ;
 int snd_mixart_send_msg (int ,struct mixart_msg*,int,struct mixart_return_uid*) ;

__attribute__((used)) static int mixart_update_analog_audio_level(struct snd_mixart* chip, int is_capture)
{
 int i, err;
 struct mixart_msg request;
 struct mixart_io_level io_level;
 struct mixart_return_uid resp;

 memset(&io_level, 0, sizeof(io_level));
 io_level.channel = -1;

 for(i=0; i<2; i++) {
  if(is_capture) {
   io_level.level[i].analog_level = mixart_analog_level[chip->analog_capture_volume[i]];
  } else {
   if(chip->analog_playback_active[i])
    io_level.level[i].analog_level = mixart_analog_level[chip->analog_playback_volume[i]];
   else
    io_level.level[i].analog_level = mixart_analog_level[MIXART_ANALOG_PLAYBACK_LEVEL_MIN];
  }
 }

 if(is_capture) request.uid = chip->uid_in_analog_physio;
 else request.uid = chip->uid_out_analog_physio;
 request.message_id = MSG_PHYSICALIO_SET_LEVEL;
 request.data = &io_level;
 request.size = sizeof(io_level);

 err = snd_mixart_send_msg(chip->mgr, &request, sizeof(resp), &resp);
 if((err<0) || (resp.error_code)) {
  dev_dbg(chip->card->dev,
   "error MSG_PHYSICALIO_SET_LEVEL card(%d) is_capture(%d) error_code(%x)\n",
   chip->chip_idx, is_capture, resp.error_code);
  return -EINVAL;
 }
 return 0;
}
