
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_azf3328_codec_data {unsigned int io_base; } ;


 int inw (unsigned int) ;

__attribute__((used)) static inline u16
snd_azf3328_codec_inw(const struct snd_azf3328_codec_data *codec, unsigned reg)
{
 return inw(codec->io_base + reg);
}
