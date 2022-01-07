
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {unsigned int* a_pow_tab; unsigned int* a_log_tab; } ;


 unsigned int GF_M (struct bch_control*) ;
 size_t GF_N (struct bch_control*) ;
 int deg (unsigned int) ;

__attribute__((used)) static int build_gf_tables(struct bch_control *bch, unsigned int poly)
{
 unsigned int i, x = 1;
 const unsigned int k = 1 << deg(poly);


 if (k != (1u << GF_M(bch)))
  return -1;

 for (i = 0; i < GF_N(bch); i++) {
  bch->a_pow_tab[i] = x;
  bch->a_log_tab[x] = i;
  if (i && (x == 1))

   return -1;
  x <<= 1;
  if (x & k)
   x ^= poly;
 }
 bch->a_pow_tab[GF_N(bch)] = 1;
 bch->a_log_tab[0] = 0;

 return 0;
}
