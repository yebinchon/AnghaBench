
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int pm_runtime_disable (int ) ;

__attribute__((used)) static void sirf_audio_codec_remove(struct snd_soc_component *component)
{
 pm_runtime_disable(component->dev);
}
