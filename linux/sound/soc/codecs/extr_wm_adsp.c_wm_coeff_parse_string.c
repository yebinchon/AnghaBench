
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static int wm_coeff_parse_string(int bytes, const u8 **pos, const u8 **str)
{
 int length;

 switch (bytes) {
 case 1:
  length = **pos;
  break;
 case 2:
  length = le16_to_cpu(*((__le16 *)*pos));
  break;
 default:
  return 0;
 }

 if (str)
  *str = *pos + bytes;

 *pos += ((length + bytes) + 3) & ~0x03;

 return length;
}
