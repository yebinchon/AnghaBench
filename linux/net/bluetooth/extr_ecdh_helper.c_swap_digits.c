
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __swab64 (int ) ;

__attribute__((used)) static inline void swap_digits(u64 *in, u64 *out, unsigned int ndigits)
{
 int i;

 for (i = 0; i < ndigits; i++)
  out[i] = __swab64(in[ndigits - 1 - i]);
}
