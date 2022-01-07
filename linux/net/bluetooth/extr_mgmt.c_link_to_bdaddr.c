
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



 int BDADDR_BREDR ;
 int BDADDR_LE_PUBLIC ;
 int BDADDR_LE_RANDOM ;


__attribute__((used)) static u8 link_to_bdaddr(u8 link_type, u8 addr_type)
{
 switch (link_type) {
 case 128:
  switch (addr_type) {
  case 129:
   return BDADDR_LE_PUBLIC;

  default:

   return BDADDR_LE_RANDOM;
  }

 default:

  return BDADDR_BREDR;
 }
}
