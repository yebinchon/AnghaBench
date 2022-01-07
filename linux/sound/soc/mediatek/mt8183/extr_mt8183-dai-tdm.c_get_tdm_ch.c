
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TDM_CHANNEL_NUM_2 ;
 unsigned int TDM_CHANNEL_NUM_4 ;
 unsigned int TDM_CHANNEL_NUM_8 ;

__attribute__((used)) static unsigned int get_tdm_ch(unsigned int ch)
{
 switch (ch) {
 case 1:
 case 2:
  return TDM_CHANNEL_NUM_2;
 case 3:
 case 4:
  return TDM_CHANNEL_NUM_4;
 case 5:
 case 6:
 case 7:
 case 8:
 default:
  return TDM_CHANNEL_NUM_8;
 }
}
