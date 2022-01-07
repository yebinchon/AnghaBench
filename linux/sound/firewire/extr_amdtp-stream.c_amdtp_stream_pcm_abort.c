
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct amdtp_stream {int pcm; } ;


 struct snd_pcm_substream* READ_ONCE (int ) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;

void amdtp_stream_pcm_abort(struct amdtp_stream *s)
{
 struct snd_pcm_substream *pcm;

 pcm = READ_ONCE(s->pcm);
 if (pcm)
  snd_pcm_stop_xrun(pcm);
}
