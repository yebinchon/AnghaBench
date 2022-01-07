
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtpav {int spinlock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int snd_mtpav_read_bytes (struct mtpav*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_mtpav_irqh(int irq, void *dev_id)
{
 struct mtpav *mcard = dev_id;

 spin_lock(&mcard->spinlock);
 snd_mtpav_read_bytes(mcard);
 spin_unlock(&mcard->spinlock);
 return IRQ_HANDLED;
}
