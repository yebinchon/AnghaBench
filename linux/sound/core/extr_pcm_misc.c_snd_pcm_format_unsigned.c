
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_pcm_format_t ;


 int snd_pcm_format_signed (int ) ;

int snd_pcm_format_unsigned(snd_pcm_format_t format)
{
 int val;

 val = snd_pcm_format_signed(format);
 if (val < 0)
  return val;
 return !val;
}
