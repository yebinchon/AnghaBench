
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {unsigned long p; unsigned long q; int bit_number; unsigned long rec_q; int pp; } ;


 unsigned long LOWER_BITS_RUBIN ;
 unsigned long UPPER_BIT_RUBIN ;
 int pullbit (int *) ;

__attribute__((used)) static void __do_decode(struct rubin_state *rs, unsigned long p,
   unsigned long q)
{
 register unsigned long lower_bits_rubin = LOWER_BITS_RUBIN;
 unsigned long rec_q;
 int c, bits = 0;






 do {
  bits++;
  q &= lower_bits_rubin;
  q <<= 1;
  p <<= 1;
 } while ((q >= UPPER_BIT_RUBIN) || ((p + q) <= UPPER_BIT_RUBIN));

 rs->p = p;
 rs->q = q;

 rs->bit_number += bits;




 rec_q = rs->rec_q;
 do {
  c = pullbit(&rs->pp);
  rec_q &= lower_bits_rubin;
  rec_q <<= 1;
  rec_q += c;
 } while (--bits);
 rs->rec_q = rec_q;
}
