
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_oxfw_stream_formation {unsigned int rate; unsigned int pcm; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {int** tx_stream_formats; int** rx_stream_formats; int unit; scalar_t__ assumed; struct amdtp_stream tx_stream; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int EINVAL ;
 int SND_OXFW_STREAM_FORMAT_ENTRIES ;
 int avc_stream_set_format (int ,int,int ,int*,unsigned int) ;
 int msleep (int) ;
 int set_rate (struct snd_oxfw*,unsigned int) ;
 int snd_oxfw_stream_parse_format (int*,struct snd_oxfw_stream_formation*) ;

__attribute__((used)) static int set_stream_format(struct snd_oxfw *oxfw, struct amdtp_stream *s,
        unsigned int rate, unsigned int pcm_channels)
{
 u8 **formats;
 struct snd_oxfw_stream_formation formation;
 enum avc_general_plug_dir dir;
 unsigned int len;
 int i, err;

 if (s == &oxfw->tx_stream) {
  formats = oxfw->tx_stream_formats;
  dir = AVC_GENERAL_PLUG_DIR_OUT;
 } else {
  formats = oxfw->rx_stream_formats;
  dir = AVC_GENERAL_PLUG_DIR_IN;
 }


 for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
  err = snd_oxfw_stream_parse_format(formats[i], &formation);
  if (err < 0)
   return err;

  if ((formation.rate == rate) && (formation.pcm == pcm_channels))
   break;
 }
 if (i == SND_OXFW_STREAM_FORMAT_ENTRIES)
  return -EINVAL;


 if (oxfw->assumed)
  return set_rate(oxfw, rate);


 len = 5 + formats[i][4] * 2;

 err = avc_stream_set_format(oxfw->unit, dir, 0, formats[i], len);
 if (err < 0)
  return err;


 msleep(100);

 return 0;
}
