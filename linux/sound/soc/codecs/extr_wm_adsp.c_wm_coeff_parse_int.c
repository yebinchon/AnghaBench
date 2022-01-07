
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le32 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int wm_coeff_parse_int(int bytes, const u8 **pos)
{
 int val = 0;

 switch (bytes) {
 case 2:
  val = le16_to_cpu(*((__le16 *)*pos));
  break;
 case 4:
  val = le32_to_cpu(*((__le32 *)*pos));
  break;
 default:
  break;
 }

 *pos += bytes;

 return val;
}
