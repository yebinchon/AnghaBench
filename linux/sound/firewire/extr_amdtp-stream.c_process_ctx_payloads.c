
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pkt_desc {int dummy; } ;
struct amdtp_stream {unsigned int (* process_ctx_payloads ) (struct amdtp_stream*,struct pkt_desc const*,unsigned int,struct snd_pcm_substream*) ;int pcm; } ;


 struct snd_pcm_substream* READ_ONCE (int ) ;
 unsigned int stub1 (struct amdtp_stream*,struct pkt_desc const*,unsigned int,struct snd_pcm_substream*) ;
 int update_pcm_pointers (struct amdtp_stream*,struct snd_pcm_substream*,unsigned int) ;

__attribute__((used)) static void process_ctx_payloads(struct amdtp_stream *s,
     const struct pkt_desc *descs,
     unsigned int packets)
{
 struct snd_pcm_substream *pcm;
 unsigned int pcm_frames;

 pcm = READ_ONCE(s->pcm);
 pcm_frames = s->process_ctx_payloads(s, descs, packets, pcm);
 if (pcm)
  update_pcm_pointers(s, pcm, pcm_frames);
}
