
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



 int crush_hash32_rjenkins1_2 (int ,int ) ;

__u32 crush_hash32_2(int type, __u32 a, __u32 b)
{
 switch (type) {
 case 128:
  return crush_hash32_rjenkins1_2(a, b);
 default:
  return 0;
 }
}
