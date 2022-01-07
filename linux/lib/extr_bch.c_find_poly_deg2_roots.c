
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {size_t* c; } ;
struct bch_control {int* a_log_tab; unsigned int* xi_tab; } ;


 int GF_N (struct bch_control*) ;
 unsigned int a_pow (struct bch_control*,int) ;
 int deg (unsigned int) ;
 unsigned int gf_sqr (struct bch_control*,unsigned int) ;
 unsigned int modulo (struct bch_control*,int) ;

__attribute__((used)) static int find_poly_deg2_roots(struct bch_control *bch, struct gf_poly *poly,
    unsigned int *roots)
{
 int n = 0, i, l0, l1, l2;
 unsigned int u, v, r;

 if (poly->c[0] && poly->c[1]) {

  l0 = bch->a_log_tab[poly->c[0]];
  l1 = bch->a_log_tab[poly->c[1]];
  l2 = bch->a_log_tab[poly->c[2]];


  u = a_pow(bch, l0+l2+2*(GF_N(bch)-l1));






  r = 0;
  v = u;
  while (v) {
   i = deg(v);
   r ^= bch->xi_tab[i];
   v ^= (1 << i);
  }

  if ((gf_sqr(bch, r)^r) == u) {

   roots[n++] = modulo(bch, 2*GF_N(bch)-l1-
         bch->a_log_tab[r]+l2);
   roots[n++] = modulo(bch, 2*GF_N(bch)-l1-
         bch->a_log_tab[r^1]+l2);
  }
 }
 return n;
}
