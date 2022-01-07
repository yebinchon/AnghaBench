
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



 int crush_hash32_rjenkins1_5 (int ,int ,int ,int ,int ) ;

__u32 crush_hash32_5(int type, __u32 a, __u32 b, __u32 c, __u32 d, __u32 e)
{
 switch (type) {
 case 128:
  return crush_hash32_rjenkins1_5(a, b, c, d, e);
 default:
  return 0;
 }
}
