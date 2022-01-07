
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_pcm_runtime {int format; int rate; } ;


 int create_iec958_consumer (int ,int ,int *,size_t) ;
 int snd_pcm_format_width (int ) ;

int snd_pcm_create_iec958_consumer(struct snd_pcm_runtime *runtime, u8 *cs,
 size_t len)
{
 return create_iec958_consumer(runtime->rate,
          snd_pcm_format_width(runtime->format),
          cs, len);
}
