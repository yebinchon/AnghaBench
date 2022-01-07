
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cs5535audio {TYPE_1__* card; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int ACC_GPIO_STATUS ;
 int ACC_IRQ_STATUS ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;


 int cs_readl (struct cs5535audio*,int ) ;
 int cs_readw (struct cs5535audio*,int ) ;
 int dev_err (int ,char*,int) ;
 int process_bm0_irq (struct cs5535audio*) ;
 int process_bm1_irq (struct cs5535audio*) ;

__attribute__((used)) static irqreturn_t snd_cs5535audio_interrupt(int irq, void *dev_id)
{
 u16 acc_irq_stat;
 unsigned char count;
 struct cs5535audio *cs5535au = dev_id;

 if (cs5535au == ((void*)0))
  return IRQ_NONE;

 acc_irq_stat = cs_readw(cs5535au, ACC_IRQ_STATUS);

 if (!acc_irq_stat)
  return IRQ_NONE;
 for (count = 0; count < 4; count++) {
  if (acc_irq_stat & (1 << count)) {
   switch (count) {
   case 129:
    cs_readl(cs5535au, ACC_GPIO_STATUS);
    break;
   case 128:
    cs_readl(cs5535au, ACC_GPIO_STATUS);
    break;
   case 131:
    process_bm0_irq(cs5535au);
    break;
   case 130:
    process_bm1_irq(cs5535au);
    break;
   default:
    dev_err(cs5535au->card->dev,
     "Unexpected irq src: 0x%x\n",
     acc_irq_stat);
    break;
   }
  }
 }
 return IRQ_HANDLED;
}
