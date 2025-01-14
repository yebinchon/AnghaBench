
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xi ;
struct bch_control {unsigned int* a_pow_tab; unsigned int* xi_tab; } ;


 int BCH_MAX_M ;
 int GF_M (struct bch_control*) ;
 unsigned int GF_N (struct bch_control*) ;
 int a_log (struct bch_control*,unsigned int) ;
 unsigned int a_pow (struct bch_control*,int) ;
 int dbg (char*,int,unsigned int) ;
 unsigned int gf_sqr (struct bch_control*,unsigned int) ;
 int memset (unsigned int*,int ,int) ;

__attribute__((used)) static int build_deg2_base(struct bch_control *bch)
{
 const int m = GF_M(bch);
 int i, j, r;
 unsigned int sum, x, y, remaining, ak = 0, xi[BCH_MAX_M];


 for (i = 0; i < m; i++) {
  for (j = 0, sum = 0; j < m; j++)
   sum ^= a_pow(bch, i*(1 << j));

  if (sum) {
   ak = bch->a_pow_tab[i];
   break;
  }
 }

 remaining = m;
 memset(xi, 0, sizeof(xi));

 for (x = 0; (x <= GF_N(bch)) && remaining; x++) {
  y = gf_sqr(bch, x)^x;
  for (i = 0; i < 2; i++) {
   r = a_log(bch, y);
   if (y && (r < m) && !xi[r]) {
    bch->xi_tab[r] = x;
    xi[r] = 1;
    remaining--;
    dbg("x%d = %x\n", r, x);
    break;
   }
   y ^= ak;
  }
 }

 return remaining ? -1 : 0;
}
