
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; } ;
struct snd_line6_pcm {int dummy; } ;
struct line6_pcm_stream {int pos_done; } ;
typedef int snd_pcm_uframes_t ;


 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int ) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

snd_pcm_uframes_t snd_line6_pointer(struct snd_pcm_substream *substream)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 struct line6_pcm_stream *pstr = get_stream(line6pcm, substream->stream);

 return pstr->pos_done;
}
