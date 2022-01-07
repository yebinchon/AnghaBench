
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {scalar_t__ dev_registered; int dev; } ;


 int device_unregister (int ) ;

__attribute__((used)) static void soc_rtd_free(struct snd_soc_pcm_runtime *rtd)
{
 if (rtd->dev_registered) {

  device_unregister(rtd->dev);
  rtd->dev_registered = 0;
 }
}
