
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct snd_oxfw_stream_formation {scalar_t__ midi; } ;
struct snd_oxfw {int midi_input_ports; int has_output; int midi_output_ports; scalar_t__** rx_stream_formats; scalar_t__** tx_stream_formats; TYPE_1__* unit; } ;
struct TYPE_2__ {int device; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int AVC_PLUG_INFO_BUF_BYTES ;
 int ENOSYS ;
 unsigned int SND_OXFW_STREAM_FORMAT_ENTRIES ;
 int avc_general_get_plug_info (TYPE_1__*,int,int,int,scalar_t__*) ;
 int dev_err (int *,char*,int) ;
 int fill_stream_formats (struct snd_oxfw*,int ,int ) ;
 int snd_oxfw_stream_parse_format (scalar_t__*,struct snd_oxfw_stream_formation*) ;

int snd_oxfw_stream_discover(struct snd_oxfw *oxfw)
{
 u8 plugs[AVC_PLUG_INFO_BUF_BYTES];
 struct snd_oxfw_stream_formation formation;
 u8 *format;
 unsigned int i;
 int err;


 err = avc_general_get_plug_info(oxfw->unit, 0x1f, 0x07, 0x00, plugs);
 if (err < 0) {
  dev_err(&oxfw->unit->device,
  "fail to get info for isoc/external in/out plugs: %d\n",
   err);
  goto end;
 } else if ((plugs[0] == 0) && (plugs[1] == 0)) {
  err = -ENOSYS;
  goto end;
 }


 if (plugs[1] > 0) {
  err = fill_stream_formats(oxfw, AVC_GENERAL_PLUG_DIR_OUT, 0);
  if (err < 0)
   goto end;

  for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
   format = oxfw->tx_stream_formats[i];
   if (format == ((void*)0))
    continue;
   err = snd_oxfw_stream_parse_format(format, &formation);
   if (err < 0)
    continue;


   if (formation.midi > 0)
    oxfw->midi_input_ports = 1;
  }

  oxfw->has_output = 1;
 }


 if (plugs[0] > 0) {
  err = fill_stream_formats(oxfw, AVC_GENERAL_PLUG_DIR_IN, 0);
  if (err < 0)
   goto end;

  for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
   format = oxfw->rx_stream_formats[i];
   if (format == ((void*)0))
    continue;
   err = snd_oxfw_stream_parse_format(format, &formation);
   if (err < 0)
    continue;


   if (formation.midi > 0)
    oxfw->midi_output_ports = 1;
  }
 }
end:
 return err;
}
