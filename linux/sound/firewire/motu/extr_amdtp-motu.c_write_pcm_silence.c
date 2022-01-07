
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct amdtp_stream {int data_block_quadlets; struct amdtp_motu* protocol; } ;
struct amdtp_motu {unsigned int pcm_chunks; int pcm_byte_offset; } ;
typedef int __be32 ;



__attribute__((used)) static void write_pcm_silence(struct amdtp_stream *s, __be32 *buffer,
         unsigned int data_blocks)
{
 struct amdtp_motu *p = s->protocol;
 unsigned int channels, i, c;
 u8 *byte;

 channels = p->pcm_chunks;

 for (i = 0; i < data_blocks; ++i) {
  byte = (u8 *)buffer + p->pcm_byte_offset;

  for (c = 0; c < channels; ++c) {
   byte[0] = 0;
   byte[1] = 0;
   byte[2] = 0;
   byte += 3;
  }

  buffer += s->data_block_quadlets;
 }
}
