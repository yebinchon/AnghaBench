
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct amdtp_stream {int dummy; } ;
struct snd_bebob {TYPE_1__* unit; struct amdtp_stream tx_stream; } ;
typedef enum avc_bridgeco_plug_dir { ____Placeholder_avc_bridgeco_plug_dir } avc_bridgeco_plug_dir ;
struct TYPE_3__ {int device; } ;


 unsigned int AM824_MAX_CHANNELS_FOR_PCM ;
 int AVC_BRIDGECO_ADDR_BYTES ;
 int AVC_BRIDGECO_PLUG_DIR_IN ;
 int AVC_BRIDGECO_PLUG_DIR_OUT ;
 int AVC_BRIDGECO_PLUG_UNIT_ISOC ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int amdtp_am824_set_midi_position (struct amdtp_stream*,unsigned int) ;
 int amdtp_am824_set_pcm_position (struct amdtp_stream*,unsigned int,unsigned int) ;
 int avc_bridgeco_fill_unit_addr (int*,int,int ,int ) ;
 int avc_bridgeco_get_plug_ch_pos (TYPE_1__*,int*,int*,int) ;
 int avc_bridgeco_get_plug_section_type (TYPE_1__*,int*,unsigned int,int*) ;
 int dev_err (int *,char*,char*,int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;

__attribute__((used)) static int map_data_channels(struct snd_bebob *bebob, struct amdtp_stream *s)
{
 unsigned int sec, sections, ch, channels;
 unsigned int pcm, midi, location;
 unsigned int stm_pos, sec_loc, pos;
 u8 *buf, addr[AVC_BRIDGECO_ADDR_BYTES], type;
 enum avc_bridgeco_plug_dir dir;
 int err;





 buf = kzalloc(256, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 if (s == &bebob->tx_stream)
  dir = AVC_BRIDGECO_PLUG_DIR_OUT;
 else
  dir = AVC_BRIDGECO_PLUG_DIR_IN;

 avc_bridgeco_fill_unit_addr(addr, dir, AVC_BRIDGECO_PLUG_UNIT_ISOC, 0);
 err = avc_bridgeco_get_plug_ch_pos(bebob->unit, addr, buf, 256);
 if (err < 0) {
  dev_err(&bebob->unit->device,
   "fail to get channel position for isoc %s plug 0: %d\n",
   (dir == AVC_BRIDGECO_PLUG_DIR_IN) ? "in" : "out",
   err);
  goto end;
 }
 pos = 0;


 pcm = 0;
 midi = 0;


 sections = buf[pos++];

 for (sec = 0; sec < sections; sec++) {

  avc_bridgeco_fill_unit_addr(addr, dir,
         AVC_BRIDGECO_PLUG_UNIT_ISOC, 0);
  err = avc_bridgeco_get_plug_section_type(bebob->unit, addr,
        sec, &type);
  if (err < 0) {
   dev_err(&bebob->unit->device,
   "fail to get section type for isoc %s plug 0: %d\n",
    (dir == AVC_BRIDGECO_PLUG_DIR_IN) ? "in" :
            "out",
    err);
   goto end;
  }

  if (type == 0xff) {
   err = -ENOSYS;
   goto end;
  }


  channels = buf[pos++];

  for (ch = 0; ch < channels; ch++) {

   stm_pos = buf[pos++] - 1;

   sec_loc = buf[pos++] - 1;







   if (sec_loc >= channels)
    sec_loc = ch;

   switch (type) {

   case 0x0a:

    if ((midi > 0) && (stm_pos != midi)) {
     err = -ENOSYS;
     goto end;
    }
    amdtp_am824_set_midi_position(s, stm_pos);
    midi = stm_pos;
    break;

   case 0x01:
   case 0x02:
   case 0x03:
   case 0x04:
   case 0x05:
   case 0x06:
   case 0x07:

   case 0x08:
   case 0x09:
   default:
    location = pcm + sec_loc;
    if (location >= AM824_MAX_CHANNELS_FOR_PCM) {
     err = -ENOSYS;
     goto end;
    }
    amdtp_am824_set_pcm_position(s, location,
            stm_pos);
    break;
   }
  }

  if (type != 0x0a)
   pcm += channels;
  else
   midi += channels;
 }
end:
 kfree(buf);
 return err;
}
