
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {int deg; int * c; } ;
struct bch_control {int cache; int * a_pow_tab; } ;


 int GF_M (struct bch_control*) ;
 int GF_POLY_SZ (int) ;
 int dbg (char*,int,int ) ;
 int gf_poly_logrep (struct bch_control*,struct gf_poly const*,int ) ;
 int gf_poly_mod (struct bch_control*,struct gf_poly*,struct gf_poly const*,int ) ;
 int gf_poly_str (struct gf_poly*) ;
 int gf_sqr (struct bch_control*,int ) ;
 int memset (struct gf_poly*,int ,int ) ;

__attribute__((used)) static void compute_trace_bk_mod(struct bch_control *bch, int k,
     const struct gf_poly *f, struct gf_poly *z,
     struct gf_poly *out)
{
 const int m = GF_M(bch);
 int i, j;


 z->deg = 1;
 z->c[0] = 0;
 z->c[1] = bch->a_pow_tab[k];

 out->deg = 0;
 memset(out, 0, GF_POLY_SZ(f->deg));


 gf_poly_logrep(bch, f, bch->cache);

 for (i = 0; i < m; i++) {

  for (j = z->deg; j >= 0; j--) {
   out->c[j] ^= z->c[j];
   z->c[2*j] = gf_sqr(bch, z->c[j]);
   z->c[2*j+1] = 0;
  }
  if (z->deg > out->deg)
   out->deg = z->deg;

  if (i < m-1) {
   z->deg *= 2;

   gf_poly_mod(bch, z, f, bch->cache);
  }
 }
 while (!out->c[out->deg] && out->deg)
  out->deg--;

 dbg("Tr(a^%d.X) mod f = %s\n", k, gf_poly_str(out));
}
