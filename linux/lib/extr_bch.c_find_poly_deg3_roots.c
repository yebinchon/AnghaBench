
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {int* c; } ;
struct bch_control {int dummy; } ;


 unsigned int a_ilog (struct bch_control*,unsigned int) ;
 int find_affine4_roots (struct bch_control*,unsigned int,unsigned int,unsigned int,unsigned int*) ;
 unsigned int gf_div (struct bch_control*,unsigned int,unsigned int) ;
 unsigned int gf_mul (struct bch_control*,unsigned int,unsigned int) ;
 unsigned int gf_sqr (struct bch_control*,unsigned int) ;

__attribute__((used)) static int find_poly_deg3_roots(struct bch_control *bch, struct gf_poly *poly,
    unsigned int *roots)
{
 int i, n = 0;
 unsigned int a, b, c, a2, b2, c2, e3, tmp[4];

 if (poly->c[0]) {

  e3 = poly->c[3];
  c2 = gf_div(bch, poly->c[0], e3);
  b2 = gf_div(bch, poly->c[1], e3);
  a2 = gf_div(bch, poly->c[2], e3);


  c = gf_mul(bch, a2, c2);
  b = gf_mul(bch, a2, b2)^c2;
  a = gf_sqr(bch, a2)^b2;


  if (find_affine4_roots(bch, a, b, c, tmp) == 4) {

   for (i = 0; i < 4; i++) {
    if (tmp[i] != a2)
     roots[n++] = a_ilog(bch, tmp[i]);
   }
  }
 }
 return n;
}
