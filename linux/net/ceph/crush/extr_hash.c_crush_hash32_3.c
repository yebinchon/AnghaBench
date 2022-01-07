
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



 int crush_hash32_rjenkins1_3 (int ,int ,int ) ;

__u32 crush_hash32_3(int type, __u32 a, __u32 b, __u32 c)
{
 switch (type) {
 case 128:
  return crush_hash32_rjenkins1_3(a, b, c);
 default:
  return 0;
 }
}
