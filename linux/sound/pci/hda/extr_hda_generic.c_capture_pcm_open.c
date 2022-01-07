
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_GEN_PCM_ACT_OPEN ;
 int call_pcm_capture_hook (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int capture_pcm_open(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream)
{
 call_pcm_capture_hook(hinfo, codec, substream, HDA_GEN_PCM_ACT_OPEN);
 return 0;
}
