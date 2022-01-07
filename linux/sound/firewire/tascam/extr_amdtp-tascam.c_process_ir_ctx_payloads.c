
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pkt_desc {unsigned int data_blocks; int * ctx_payload; } ;
struct amdtp_stream {int dummy; } ;
typedef int __be32 ;


 int read_pcm_s32 (struct amdtp_stream*,struct snd_pcm_substream*,int *,unsigned int,unsigned int) ;
 int read_status_messages (struct amdtp_stream*,int *,unsigned int) ;

__attribute__((used)) static unsigned int process_ir_ctx_payloads(struct amdtp_stream *s,
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
   read_pcm_s32(s, pcm, buf, data_blocks, pcm_frames);
   pcm_frames += data_blocks;
  }

  read_status_messages(s, buf, data_blocks);
 }

 return pcm_frames;
}
