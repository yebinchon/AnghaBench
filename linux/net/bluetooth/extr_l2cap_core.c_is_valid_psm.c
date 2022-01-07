
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 scalar_t__ bdaddr_type_is_le (int ) ;

__attribute__((used)) static bool is_valid_psm(u16 psm, u8 dst_type) {
 if (!psm)
  return 0;

 if (bdaddr_type_is_le(dst_type))
  return (psm <= 0x00ff);


 return ((psm & 0x0101) == 0x0001);
}
