
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_tscm {unsigned int pcm_channels; } ;
struct amdtp_stream {int data_block_quadlets; struct amdtp_tscm* protocol; } ;
typedef int __be32 ;



__attribute__((used)) static void write_pcm_silence(struct amdtp_stream *s, __be32 *buffer,
         unsigned int data_blocks)
{
 struct amdtp_tscm *p = s->protocol;
 unsigned int channels, i, c;

 channels = p->pcm_channels;

 for (i = 0; i < data_blocks; ++i) {
  for (c = 0; c < channels; ++c)
   buffer[c] = 0x00000000;
  buffer += s->data_block_quadlets;
 }
}
