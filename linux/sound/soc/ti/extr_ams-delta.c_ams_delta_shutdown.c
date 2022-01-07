
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int ams_delta_digital_mute (int *,int) ;

__attribute__((used)) static void ams_delta_shutdown(struct snd_pcm_substream *substream)
{
 ams_delta_digital_mute(((void*)0), 1);
}
