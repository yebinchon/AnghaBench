
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hal2 {int dummy; } ;
struct snd_device {struct snd_hal2* device_data; } ;


 int SGI_HPCDMA_IRQ ;
 int free_irq (int ,struct snd_hal2*) ;
 int kfree (struct snd_hal2*) ;

__attribute__((used)) static int hal2_dev_free(struct snd_device *device)
{
 struct snd_hal2 *hal2 = device->device_data;

 free_irq(SGI_HPCDMA_IRQ, hal2);
 kfree(hal2);
 return 0;
}
