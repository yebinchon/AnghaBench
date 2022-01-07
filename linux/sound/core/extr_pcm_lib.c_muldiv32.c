
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int64_t ;


 unsigned int UINT_MAX ;
 unsigned int div_u64_rem (unsigned int,unsigned int,unsigned int*) ;

__attribute__((used)) static inline unsigned int muldiv32(unsigned int a, unsigned int b,
        unsigned int c, unsigned int *r)
{
 u_int64_t n = (u_int64_t) a * b;
 if (c == 0) {
  *r = 0;
  return UINT_MAX;
 }
 n = div_u64_rem(n, c, r);
 if (n >= UINT_MAX) {
  *r = 0;
  return UINT_MAX;
 }
 return n;
}
