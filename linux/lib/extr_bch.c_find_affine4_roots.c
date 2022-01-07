
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {unsigned int* a_pow_tab; } ;


 int GF_M (struct bch_control*) ;
 int a_log (struct bch_control*,unsigned int) ;
 size_t mod_s (struct bch_control*,int) ;
 int solve_linear_system (struct bch_control*,unsigned int*,unsigned int*,int) ;

__attribute__((used)) static int find_affine4_roots(struct bch_control *bch, unsigned int a,
         unsigned int b, unsigned int c,
         unsigned int *roots)
{
 int i, j, k;
 const int m = GF_M(bch);
 unsigned int mask = 0xff, t, rows[16] = {0,};

 j = a_log(bch, b);
 k = a_log(bch, a);
 rows[0] = c;


 for (i = 0; i < m; i++) {
  rows[i+1] = bch->a_pow_tab[4*i]^
   (a ? bch->a_pow_tab[mod_s(bch, k)] : 0)^
   (b ? bch->a_pow_tab[mod_s(bch, j)] : 0);
  j++;
  k += 2;
 }




 for (j = 8; j != 0; j >>= 1, mask ^= (mask << j)) {
  for (k = 0; k < 16; k = (k+j+1) & ~j) {
   t = ((rows[k] >> j)^rows[k+j]) & mask;
   rows[k] ^= (t << j);
   rows[k+j] ^= t;
  }
 }
 return solve_linear_system(bch, rows, roots, 4);
}
