
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {size_t deg; scalar_t__* c; } ;
struct bch_control {int dummy; } ;


 int gf_poly_mod (struct bch_control*,struct gf_poly*,struct gf_poly const*,int *) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void gf_poly_div(struct bch_control *bch, struct gf_poly *a,
   const struct gf_poly *b, struct gf_poly *q)
{
 if (a->deg >= b->deg) {
  q->deg = a->deg-b->deg;

  gf_poly_mod(bch, a, b, ((void*)0));

  memcpy(q->c, &a->c[b->deg], (1+q->deg)*sizeof(unsigned int));
 } else {
  q->deg = 0;
  q->c[0] = 0;
 }
}
