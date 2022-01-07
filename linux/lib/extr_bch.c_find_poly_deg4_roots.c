
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {unsigned int* c; } ;
struct bch_control {int dummy; } ;


 int GF_N (struct bch_control*) ;
 unsigned int a_ilog (struct bch_control*,unsigned int) ;
 int a_log (struct bch_control*,unsigned int) ;
 unsigned int a_pow (struct bch_control*,int) ;
 int find_affine4_roots (struct bch_control*,unsigned int,unsigned int,unsigned int,unsigned int*) ;
 unsigned int gf_div (struct bch_control*,unsigned int,unsigned int) ;
 unsigned int gf_inv (struct bch_control*,unsigned int) ;
 unsigned int gf_mul (struct bch_control*,unsigned int,unsigned int) ;

__attribute__((used)) static int find_poly_deg4_roots(struct bch_control *bch, struct gf_poly *poly,
    unsigned int *roots)
{
 int i, l, n = 0;
 unsigned int a, b, c, d, e = 0, f, a2, b2, c2, e4;

 if (poly->c[0] == 0)
  return 0;


 e4 = poly->c[4];
 d = gf_div(bch, poly->c[0], e4);
 c = gf_div(bch, poly->c[1], e4);
 b = gf_div(bch, poly->c[2], e4);
 a = gf_div(bch, poly->c[3], e4);


 if (a) {

  if (c) {

   f = gf_div(bch, c, a);
   l = a_log(bch, f);
   l += (l & 1) ? GF_N(bch) : 0;
   e = a_pow(bch, l/2);







   d = a_pow(bch, 2*l)^gf_mul(bch, b, f)^d;
   b = gf_mul(bch, a, e)^b;
  }

  if (d == 0)

   return 0;

  c2 = gf_inv(bch, d);
  b2 = gf_div(bch, a, d);
  a2 = gf_div(bch, b, d);
 } else {

  c2 = d;
  b2 = c;
  a2 = b;
 }

 if (find_affine4_roots(bch, a2, b2, c2, roots) == 4) {
  for (i = 0; i < 4; i++) {

   f = a ? gf_inv(bch, roots[i]) : roots[i];
   roots[i] = a_ilog(bch, f^e);
  }
  n = 4;
 }
 return n;
}
