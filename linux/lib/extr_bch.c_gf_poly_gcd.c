
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {scalar_t__ deg; } ;
struct bch_control {int dummy; } ;


 int dbg (char*,int ,...) ;
 int gf_poly_mod (struct bch_control*,struct gf_poly*,struct gf_poly*,int *) ;
 int gf_poly_str (struct gf_poly*) ;

__attribute__((used)) static struct gf_poly *gf_poly_gcd(struct bch_control *bch, struct gf_poly *a,
       struct gf_poly *b)
{
 struct gf_poly *tmp;

 dbg("gcd(%s,%s)=", gf_poly_str(a), gf_poly_str(b));

 if (a->deg < b->deg) {
  tmp = b;
  b = a;
  a = tmp;
 }

 while (b->deg > 0) {
  gf_poly_mod(bch, a, b, ((void*)0));
  tmp = b;
  b = a;
  a = tmp;
 }

 dbg("%s\n", gf_poly_str(a));

 return a;
}
