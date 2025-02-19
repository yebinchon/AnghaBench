
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {unsigned long p; unsigned long q; long rec_q; } ;


 unsigned long UPPER_BIT_RUBIN ;
 int __do_decode (struct rubin_state*,unsigned long,unsigned long) ;

__attribute__((used)) static int decode(struct rubin_state *rs, long A, long B)
{
 unsigned long p = rs->p, q = rs->q;
 long i0, threshold;
 int symbol;

 if (q >= UPPER_BIT_RUBIN || ((p + q) <= UPPER_BIT_RUBIN))
  __do_decode(rs, p, q);

 i0 = A * rs->p / (A + B);
 if (i0 <= 0)
  i0 = 1;

 if (i0 >= rs->p)
  i0 = rs->p - 1;

 threshold = rs->q + i0;
 symbol = rs->rec_q >= threshold;
 if (rs->rec_q >= threshold) {
  rs->q += i0;
  i0 = rs->p - i0;
 }

 rs->p = i0;

 return symbol;
}
