
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char sc6000_irq_to_softcfg(int irq)
{
 unsigned char val = 0;

 switch (irq) {
 case 5:
  val = 0x28;
  break;
 case 7:
  val = 0x8;
  break;
 case 9:
  val = 0x10;
  break;
 case 10:
  val = 0x18;
  break;
 case 11:
  val = 0x20;
  break;
 default:
  break;
 }
 return val;
}
