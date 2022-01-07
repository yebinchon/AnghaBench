
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;







__attribute__((used)) static u16 vht_mcs_map_to_mcs_mask(u8 vht_mcs_map)
{
 u16 mcs_mask = 0;

 switch (vht_mcs_map) {
 case 131:
  break;
 case 130:
  mcs_mask = 0x00FF;
  break;
 case 129:
  mcs_mask = 0x01FF;
  break;
 case 128:
  mcs_mask = 0x03FF;
  break;
 default:
  break;
 }

 return mcs_mask;
}
