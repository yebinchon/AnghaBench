
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int data_block_quadlets; struct amdtp_am824* protocol; } ;
struct amdtp_am824 {unsigned int pcm_channels; size_t* pcm_positions; } ;
typedef int __be32 ;


 int cpu_to_be32 (int) ;

__attribute__((used)) static void write_pcm_silence(struct amdtp_stream *s,
         __be32 *buffer, unsigned int frames)
{
 struct amdtp_am824 *p = s->protocol;
 unsigned int i, c, channels = p->pcm_channels;

 for (i = 0; i < frames; ++i) {
  for (c = 0; c < channels; ++c)
   buffer[p->pcm_positions[c]] = cpu_to_be32(0x40000000);
  buffer += s->data_block_quadlets;
 }
}
