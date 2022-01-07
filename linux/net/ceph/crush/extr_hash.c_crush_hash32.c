
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



 int crush_hash32_rjenkins1 (int ) ;

__u32 crush_hash32(int type, __u32 a)
{
 switch (type) {
 case 128:
  return crush_hash32_rjenkins1(a);
 default:
  return 0;
 }
}
