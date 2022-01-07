
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {TYPE_2__* beep; TYPE_1__* pdev; } ;
struct TYPE_4__ {int addr; int buf; int dev; } ;
struct TYPE_3__ {int dev; } ;


 int BEEP_BUFLEN ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int input_unregister_device (int ) ;
 int kfree (TYPE_2__*) ;

void snd_pmac_detach_beep(struct snd_pmac *chip)
{
 if (chip->beep) {
  input_unregister_device(chip->beep->dev);
  dma_free_coherent(&chip->pdev->dev, BEEP_BUFLEN * 4,
      chip->beep->buf, chip->beep->addr);
  kfree(chip->beep);
  chip->beep = ((void*)0);
 }
}
