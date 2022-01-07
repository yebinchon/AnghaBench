
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char sc6000_mpu_irq_to_softcfg(int mpu_irq)
{
 unsigned char val = 0;

 switch (mpu_irq) {
 case 5:
  val = 4;
  break;
 case 7:
  val = 0x44;
  break;
 case 9:
  val = 0x84;
  break;
 case 10:
  val = 0xc4;
  break;
 default:
  break;
 }
 return val;
}
