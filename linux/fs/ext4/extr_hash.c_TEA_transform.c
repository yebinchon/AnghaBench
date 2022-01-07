
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 scalar_t__ DELTA ;

__attribute__((used)) static void TEA_transform(__u32 buf[4], __u32 const in[])
{
 __u32 sum = 0;
 __u32 b0 = buf[0], b1 = buf[1];
 __u32 a = in[0], b = in[1], c = in[2], d = in[3];
 int n = 16;

 do {
  sum += DELTA;
  b0 += ((b1 << 4)+a) ^ (b1+sum) ^ ((b1 >> 5)+b);
  b1 += ((b0 << 4)+c) ^ (b0+sum) ^ ((b0 >> 5)+d);
 } while (--n);

 buf[0] += b0;
 buf[1] += b1;
}
