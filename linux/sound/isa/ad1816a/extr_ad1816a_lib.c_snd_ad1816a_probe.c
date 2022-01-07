
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int lock; int hardware; int version; } ;


 int AD1816A_HW_AD1815 ;
 int AD1816A_HW_AD1816A ;
 int AD1816A_HW_AD18MAX10 ;
 int AD1816A_HW_AUTO ;
 int AD1816A_VERSION_ID ;
 int snd_ad1816a_read (struct snd_ad1816a*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_probe(struct snd_ad1816a *chip)
{
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);

 switch (chip->version = snd_ad1816a_read(chip, AD1816A_VERSION_ID)) {
 case 0:
  chip->hardware = AD1816A_HW_AD1815;
  break;
 case 1:
  chip->hardware = AD1816A_HW_AD18MAX10;
  break;
 case 3:
  chip->hardware = AD1816A_HW_AD1816A;
  break;
 default:
  chip->hardware = AD1816A_HW_AUTO;
 }

 spin_unlock_irqrestore(&chip->lock, flags);
 return 0;
}
