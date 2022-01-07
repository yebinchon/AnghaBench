
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_azf3328_codec_data {unsigned int io_base; } ;


 int inl (unsigned int) ;

__attribute__((used)) static inline u32
snd_azf3328_codec_inl(const struct snd_azf3328_codec_data *codec, unsigned reg)
{
 return inl(codec->io_base + reg);
}
