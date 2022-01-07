
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sw842_param {int bit; int* out; int olen; } ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOSPC ;
 int __split_add_bits (struct sw842_param*,int,int,int) ;
 int* bmask ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int) ;
 int pr_debug (char*,unsigned char,unsigned long) ;
 int put_unaligned (int ,int *) ;
 int round_up (int,int) ;

__attribute__((used)) static int add_bits(struct sw842_param *p, u64 d, u8 n)
{
 int b = p->bit, bits = b + n, s = round_up(bits, 8) - bits;
 u64 o;
 u8 *out = p->out;

 pr_debug("add %u bits %lx\n", (unsigned char)n, (unsigned long)d);

 if (n > 64)
  return -EINVAL;




 if (bits > 64)
  return __split_add_bits(p, d, n, 32);
 else if (p->olen < 8 && bits > 32 && bits <= 56)
  return __split_add_bits(p, d, n, 16);
 else if (p->olen < 4 && bits > 16 && bits <= 24)
  return __split_add_bits(p, d, n, 8);

 if (DIV_ROUND_UP(bits, 8) > p->olen)
  return -ENOSPC;

 o = *out & bmask[b];
 d <<= s;

 if (bits <= 8)
  *out = o | d;
 else if (bits <= 16)
  put_unaligned(cpu_to_be16(o << 8 | d), (__be16 *)out);
 else if (bits <= 24)
  put_unaligned(cpu_to_be32(o << 24 | d << 8), (__be32 *)out);
 else if (bits <= 32)
  put_unaligned(cpu_to_be32(o << 24 | d), (__be32 *)out);
 else if (bits <= 40)
  put_unaligned(cpu_to_be64(o << 56 | d << 24), (__be64 *)out);
 else if (bits <= 48)
  put_unaligned(cpu_to_be64(o << 56 | d << 16), (__be64 *)out);
 else if (bits <= 56)
  put_unaligned(cpu_to_be64(o << 56 | d << 8), (__be64 *)out);
 else
  put_unaligned(cpu_to_be64(o << 56 | d), (__be64 *)out);

 p->bit += n;

 if (p->bit > 7) {
  p->out += p->bit / 8;
  p->olen -= p->bit / 8;
  p->bit %= 8;
 }

 return 0;
}
