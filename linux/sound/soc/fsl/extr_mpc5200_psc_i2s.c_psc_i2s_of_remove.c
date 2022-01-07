
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int mpc5200_audio_dma_destroy (struct platform_device*) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int psc_i2s_of_remove(struct platform_device *op)
{
 mpc5200_audio_dma_destroy(op);
 snd_soc_unregister_component(&op->dev);
 return 0;
}
