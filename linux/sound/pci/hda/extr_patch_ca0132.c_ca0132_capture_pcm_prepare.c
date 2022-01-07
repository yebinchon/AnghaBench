
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int nid; } ;
struct hda_codec {int dummy; } ;


 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int ca0132_capture_pcm_prepare(struct hda_pcm_stream *hinfo,
     struct hda_codec *codec,
     unsigned int stream_tag,
     unsigned int format,
     struct snd_pcm_substream *substream)
{
 snd_hda_codec_setup_stream(codec, hinfo->nid,
       stream_tag, 0, format);

 return 0;
}
