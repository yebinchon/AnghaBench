
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_pcm {unsigned int buf_pos; unsigned int pcm_buffer_size; } ;



__attribute__((used)) static inline void bytepos_finish(struct loopback_pcm *dpcm,
      unsigned int delta)
{
 dpcm->buf_pos += delta;
 dpcm->buf_pos %= dpcm->pcm_buffer_size;
}
