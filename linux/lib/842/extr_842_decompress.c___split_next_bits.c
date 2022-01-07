
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sw842_param {int dummy; } ;


 int EINVAL ;
 int next_bits (struct sw842_param*,int*,int) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static int __split_next_bits(struct sw842_param *p, u64 *d, u8 n, u8 s)
{
 u64 tmp = 0;
 int ret;

 if (n <= s) {
  pr_debug("split_next_bits invalid n %u s %u\n", n, s);
  return -EINVAL;
 }

 ret = next_bits(p, &tmp, n - s);
 if (ret)
  return ret;
 ret = next_bits(p, d, s);
 if (ret)
  return ret;
 *d |= tmp << s;
 return 0;
}
