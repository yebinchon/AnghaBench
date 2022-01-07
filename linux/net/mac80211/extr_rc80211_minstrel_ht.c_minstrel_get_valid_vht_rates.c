
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;


 int BIT (int) ;
 int BW_20 ;
 int BW_40 ;
 int BW_80 ;



 int WARN_ON (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16
minstrel_get_valid_vht_rates(int bw, int nss, __le16 mcs_map)
{
 u16 mask = 0;

 if (bw == BW_20) {
  if (nss != 3 && nss != 6)
   mask = BIT(9);
 } else if (bw == BW_80) {
  if (nss == 3 || nss == 7)
   mask = BIT(6);
  else if (nss == 6)
   mask = BIT(9);
 } else {
  WARN_ON(bw != BW_40);
 }

 switch ((le16_to_cpu(mcs_map) >> (2 * (nss - 1))) & 3) {
 case 130:
  mask |= 0x300;
  break;
 case 129:
  mask |= 0x200;
  break;
 case 128:
  break;
 default:
  mask = 0x3ff;
 }

 return 0x3ff & ~mask;
}
