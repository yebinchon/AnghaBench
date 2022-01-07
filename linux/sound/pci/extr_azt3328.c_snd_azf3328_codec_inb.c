
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_azf3328_codec_data {unsigned int io_base; } ;


 int inb (unsigned int) ;

__attribute__((used)) static inline u8
snd_azf3328_codec_inb(const struct snd_azf3328_codec_data *codec, unsigned reg)
{
 return inb(codec->io_base + reg);
}
