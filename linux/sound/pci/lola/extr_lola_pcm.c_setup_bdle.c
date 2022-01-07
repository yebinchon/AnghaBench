
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct lola_stream {scalar_t__ frags; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __le32 ;


 int EINVAL ;
 scalar_t__ LOLA_MAX_BDL_ENTRIES ;
 int cpu_to_le32 (int) ;
 scalar_t__ snd_pcm_sgbuf_get_addr (struct snd_pcm_substream*,int) ;
 int snd_pcm_sgbuf_get_chunk_size (struct snd_pcm_substream*,int,int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int setup_bdle(struct snd_pcm_substream *substream,
        struct lola_stream *str, __le32 **bdlp,
        int ofs, int size)
{
 __le32 *bdl = *bdlp;

 while (size > 0) {
  dma_addr_t addr;
  int chunk;

  if (str->frags >= LOLA_MAX_BDL_ENTRIES)
   return -EINVAL;

  addr = snd_pcm_sgbuf_get_addr(substream, ofs);

  bdl[0] = cpu_to_le32((u32)addr);
  bdl[1] = cpu_to_le32(upper_32_bits(addr));

  chunk = snd_pcm_sgbuf_get_chunk_size(substream, ofs, size);
  bdl[2] = cpu_to_le32(chunk);



  size -= chunk;
  bdl[3] = size ? 0 : cpu_to_le32(0x01);
  bdl += 4;
  str->frags++;
  ofs += chunk;
 }
 *bdlp = bdl;
 return ofs;
}
