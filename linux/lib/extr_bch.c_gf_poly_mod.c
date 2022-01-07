
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {unsigned int* c; unsigned int deg; } ;
struct bch_control {int* cache; unsigned int* a_pow_tab; } ;


 int a_log (struct bch_control*,unsigned int) ;
 int gf_poly_logrep (struct bch_control*,struct gf_poly const*,int*) ;
 size_t mod_s (struct bch_control*,int) ;

__attribute__((used)) static void gf_poly_mod(struct bch_control *bch, struct gf_poly *a,
   const struct gf_poly *b, int *rep)
{
 int la, p, m;
 unsigned int i, j, *c = a->c;
 const unsigned int d = b->deg;

 if (a->deg < d)
  return;


 if (!rep) {
  rep = bch->cache;
  gf_poly_logrep(bch, b, rep);
 }

 for (j = a->deg; j >= d; j--) {
  if (c[j]) {
   la = a_log(bch, c[j]);
   p = j-d;
   for (i = 0; i < d; i++, p++) {
    m = rep[i];
    if (m >= 0)
     c[p] ^= bch->a_pow_tab[mod_s(bch,
             m+la)];
   }
  }
 }
 a->deg = d-1;
 while (!c[a->deg] && a->deg)
  a->deg--;
}
