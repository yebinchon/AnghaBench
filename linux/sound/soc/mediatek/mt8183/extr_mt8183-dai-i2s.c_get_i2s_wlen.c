
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_pcm_format_t ;


 unsigned int I2S_WLEN_16_BIT ;
 unsigned int I2S_WLEN_32_BIT ;
 int snd_pcm_format_physical_width (int ) ;

__attribute__((used)) static unsigned int get_i2s_wlen(snd_pcm_format_t format)
{
 return snd_pcm_format_physical_width(format) <= 16 ?
        I2S_WLEN_16_BIT : I2S_WLEN_32_BIT;
}
