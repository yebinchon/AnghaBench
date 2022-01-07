
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pkt_desc {unsigned int data_blocks; int data_block_counter; int * ctx_payload; } ;
struct amdtp_stream {int dummy; } ;
typedef int __be32 ;


 int write_midi_messages (struct amdtp_stream*,int *,unsigned int,int ) ;
 int write_pcm_s32 (struct amdtp_stream*,struct snd_pcm_substream*,int *,unsigned int,unsigned int) ;
 int write_pcm_silence (struct amdtp_stream*,int *,unsigned int) ;

__attribute__((used)) static unsigned int process_it_ctx_payloads(struct amdtp_stream *s,
         const struct pkt_desc *descs,
         unsigned int packets,
         struct snd_pcm_substream *pcm)
{
 unsigned int pcm_frames = 0;
 int i;

 for (i = 0; i < packets; ++i) {
  const struct pkt_desc *desc = descs + i;
  __be32 *buf = desc->ctx_payload;
  unsigned int data_blocks = desc->data_blocks;

  if (pcm) {
   write_pcm_s32(s, pcm, buf, data_blocks, pcm_frames);
   pcm_frames += data_blocks;
  } else {
   write_pcm_silence(s, buf, data_blocks);
  }

  write_midi_messages(s, buf, data_blocks,
        desc->data_block_counter);
 }

 return pcm_frames;
}
