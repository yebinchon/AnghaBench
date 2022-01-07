
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int data_block_quadlets; struct amdtp_dot* protocol; } ;
struct amdtp_dot {unsigned int pcm_channels; } ;
typedef int __be32 ;


 int cpu_to_be32 (int) ;

__attribute__((used)) static void write_pcm_silence(struct amdtp_stream *s, __be32 *buffer,
         unsigned int data_blocks)
{
 struct amdtp_dot *p = s->protocol;
 unsigned int channels, i, c;

 channels = p->pcm_channels;

 buffer++;
 for (i = 0; i < data_blocks; ++i) {
  for (c = 0; c < channels; ++c)
   buffer[c] = cpu_to_be32(0x40000000);
  buffer += s->data_block_quadlets;
 }
}
