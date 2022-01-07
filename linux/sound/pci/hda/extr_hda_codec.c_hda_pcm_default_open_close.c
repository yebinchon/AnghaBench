
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int dummy; } ;



__attribute__((used)) static int hda_pcm_default_open_close(struct hda_pcm_stream *hinfo,
          struct hda_codec *codec,
          struct snd_pcm_substream *substream)
{
 return 0;
}
