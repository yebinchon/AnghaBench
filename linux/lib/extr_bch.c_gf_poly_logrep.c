
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {int deg; scalar_t__* c; } ;
struct bch_control {int dummy; } ;


 int GF_N (struct bch_control*) ;
 int a_log (struct bch_control*,scalar_t__) ;
 int mod_s (struct bch_control*,int) ;

__attribute__((used)) static void gf_poly_logrep(struct bch_control *bch,
      const struct gf_poly *a, int *rep)
{
 int i, d = a->deg, l = GF_N(bch)-a_log(bch, a->c[a->deg]);


 for (i = 0; i < d; i++)
  rep[i] = a->c[i] ? mod_s(bch, a_log(bch, a->c[i])+l) : -1;
}
