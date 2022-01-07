
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 sprd_mcdt_dma_ack_shift(u8 channel)
{
 switch (channel) {
 default:
 case 0:
 case 8:
  return 0;
 case 1:
 case 9:
  return 4;
 case 2:
  return 8;
 case 3:
  return 12;
 case 4:
  return 16;
 case 5:
  return 20;
 case 6:
  return 24;
 case 7:
  return 28;
 }
}
