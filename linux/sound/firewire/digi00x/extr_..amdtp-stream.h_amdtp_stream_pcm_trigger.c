
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct amdtp_stream {int pcm; } ;


 int WRITE_ONCE (int ,struct snd_pcm_substream*) ;

__attribute__((used)) static inline void amdtp_stream_pcm_trigger(struct amdtp_stream *s,
         struct snd_pcm_substream *pcm)
{
 WRITE_ONCE(s->pcm, pcm);
}
