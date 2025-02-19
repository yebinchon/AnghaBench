
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static __u32 dx_hack_hash_signed(const char *name, int len)
{
 __u32 hash, hash0 = 0x12a3fe2d, hash1 = 0x37abe8f9;
 const signed char *scp = (const signed char *) name;

 while (len--) {
  hash = hash1 + (hash0 ^ (((int) *scp++) * 7152373));

  if (hash & 0x80000000)
   hash -= 0x7fffffff;
  hash1 = hash0;
  hash0 = hash;
 }
 return hash0 << 1;
}
