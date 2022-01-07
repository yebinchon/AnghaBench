
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int crush_hash_seed ;
 int crush_hashmix (int,int,int) ;

__attribute__((used)) static __u32 crush_hash32_rjenkins1_4(__u32 a, __u32 b, __u32 c, __u32 d)
{
 __u32 hash = crush_hash_seed ^ a ^ b ^ c ^ d;
 __u32 x = 231232;
 __u32 y = 1232;
 crush_hashmix(a, b, hash);
 crush_hashmix(c, d, hash);
 crush_hashmix(a, x, hash);
 crush_hashmix(y, b, hash);
 crush_hashmix(c, x, hash);
 crush_hashmix(y, d, hash);
 return hash;
}
