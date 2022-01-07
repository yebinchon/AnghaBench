
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_azf3328_codec_data {unsigned int io_base; } ;


 int outl (int ,unsigned long) ;

__attribute__((used)) static inline void
snd_azf3328_codec_outl_multi(const struct snd_azf3328_codec_data *codec,
        unsigned reg, const void *buffer, int count
)
{
 unsigned long addr = codec->io_base + reg;
 if (count) {
  const u32 *buf = buffer;
  do {
   outl(*buf++, addr);
   addr += 4;
  } while (--count);
 }
}
