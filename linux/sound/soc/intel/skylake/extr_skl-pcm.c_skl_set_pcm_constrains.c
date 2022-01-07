
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct hdac_bus {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_TIME ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int) ;

__attribute__((used)) static void skl_set_pcm_constrains(struct hdac_bus *bus,
     struct snd_pcm_runtime *runtime)
{
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);


 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_TIME,
         20, 178000000);
}
