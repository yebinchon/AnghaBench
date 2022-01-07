
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_pcm_format_t ;


 scalar_t__ snd_pcm_format_signed (int ) ;

int snd_pcm_format_linear(snd_pcm_format_t format)
{
 return snd_pcm_format_signed(format) >= 0;
}
