
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {int* c; } ;
struct bch_control {scalar_t__* a_log_tab; } ;


 scalar_t__ GF_N (struct bch_control*) ;
 unsigned int mod_s (struct bch_control*,scalar_t__) ;

__attribute__((used)) static int find_poly_deg1_roots(struct bch_control *bch, struct gf_poly *poly,
    unsigned int *roots)
{
 int n = 0;

 if (poly->c[0])

  roots[n++] = mod_s(bch, GF_N(bch)-bch->a_log_tab[poly->c[0]]+
       bch->a_log_tab[poly->c[1]]);
 return n;
}
