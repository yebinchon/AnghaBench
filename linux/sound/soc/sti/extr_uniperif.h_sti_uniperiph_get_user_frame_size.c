
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int channels; int format; } ;


 int snd_pcm_format_width (int ) ;

__attribute__((used)) static inline int sti_uniperiph_get_user_frame_size(
 struct snd_pcm_runtime *runtime)
{
 return (runtime->channels * snd_pcm_format_width(runtime->format) / 8);
}
