
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sw842_param {int* in; int bit; int ilen; } ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int EOVERFLOW ;
 int GENMASK_ULL (int,int ) ;
 int __split_next_bits (struct sw842_param*,int*,int,int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int get_unaligned (int *) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int next_bits(struct sw842_param *p, u64 *d, u8 n)
{
 u8 *in = p->in, b = p->bit, bits = b + n;

 if (n > 64) {
  pr_debug("next_bits invalid n %u\n", n);
  return -EINVAL;
 }




 if (bits > 64)
  return __split_next_bits(p, d, n, 32);
 else if (p->ilen < 8 && bits > 32 && bits <= 56)
  return __split_next_bits(p, d, n, 16);
 else if (p->ilen < 4 && bits > 16 && bits <= 24)
  return __split_next_bits(p, d, n, 8);

 if (DIV_ROUND_UP(bits, 8) > p->ilen)
  return -EOVERFLOW;

 if (bits <= 8)
  *d = *in >> (8 - bits);
 else if (bits <= 16)
  *d = be16_to_cpu(get_unaligned((__be16 *)in)) >> (16 - bits);
 else if (bits <= 32)
  *d = be32_to_cpu(get_unaligned((__be32 *)in)) >> (32 - bits);
 else
  *d = be64_to_cpu(get_unaligned((__be64 *)in)) >> (64 - bits);

 *d &= GENMASK_ULL(n - 1, 0);

 p->bit += n;

 if (p->bit > 7) {
  p->in += p->bit / 8;
  p->ilen -= p->bit / 8;
  p->bit %= 8;
 }

 return 0;
}
