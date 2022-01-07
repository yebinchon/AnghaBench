
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nm256 {scalar_t__ irq; int irq_mutex; int irq_acks; TYPE_2__* pci; TYPE_1__* card; int interrupt; } ;
struct TYPE_4__ {scalar_t__ irq; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int dev_err (int ,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,int ,struct nm256*) ;

__attribute__((used)) static int snd_nm256_acquire_irq(struct nm256 *chip)
{
 mutex_lock(&chip->irq_mutex);
 if (chip->irq < 0) {
  if (request_irq(chip->pci->irq, chip->interrupt, IRQF_SHARED,
    KBUILD_MODNAME, chip)) {
   dev_err(chip->card->dev,
    "unable to grab IRQ %d\n", chip->pci->irq);
   mutex_unlock(&chip->irq_mutex);
   return -EBUSY;
  }
  chip->irq = chip->pci->irq;
 }
 chip->irq_acks++;
 mutex_unlock(&chip->irq_mutex);
 return 0;
}
