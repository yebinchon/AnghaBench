
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char sc6000_dma_to_softcfg(int dma)
{
 unsigned char val = 0;

 switch (dma) {
 case 0:
  val = 1;
  break;
 case 1:
  val = 2;
  break;
 case 3:
  val = 3;
  break;
 default:
  break;
 }
 return val;
}
