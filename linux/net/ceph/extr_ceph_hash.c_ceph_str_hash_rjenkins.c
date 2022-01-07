
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int mix (int,int,int) ;

unsigned int ceph_str_hash_rjenkins(const char *str, unsigned int length)
{
 const unsigned char *k = (const unsigned char *)str;
 __u32 a, b, c;
 __u32 len;


 len = length;
 a = 0x9e3779b9;
 b = a;
 c = 0;


 while (len >= 12) {
  a = a + (k[0] + ((__u32)k[1] << 8) + ((__u32)k[2] << 16) +
    ((__u32)k[3] << 24));
  b = b + (k[4] + ((__u32)k[5] << 8) + ((__u32)k[6] << 16) +
    ((__u32)k[7] << 24));
  c = c + (k[8] + ((__u32)k[9] << 8) + ((__u32)k[10] << 16) +
    ((__u32)k[11] << 24));
  mix(a, b, c);
  k = k + 12;
  len = len - 12;
 }


 c = c + length;
 switch (len) {
 case 11:
  c = c + ((__u32)k[10] << 24);

 case 10:
  c = c + ((__u32)k[9] << 16);

 case 9:
  c = c + ((__u32)k[8] << 8);


 case 8:
  b = b + ((__u32)k[7] << 24);

 case 7:
  b = b + ((__u32)k[6] << 16);

 case 6:
  b = b + ((__u32)k[5] << 8);

 case 5:
  b = b + k[4];

 case 4:
  a = a + ((__u32)k[3] << 24);

 case 3:
  a = a + ((__u32)k[2] << 16);

 case 2:
  a = a + ((__u32)k[1] << 8);

 case 1:
  a = a + k[0];

 }
 mix(a, b, c);

 return c;
}
