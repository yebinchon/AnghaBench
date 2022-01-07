
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct bch_control {int ecc_bits; } ;


 int GF_T (struct bch_control*) ;
 unsigned int a_pow (struct bch_control*,int) ;
 int deg (unsigned int) ;
 unsigned int gf_sqr (struct bch_control*,unsigned int) ;
 int memset (unsigned int*,int ,int) ;

__attribute__((used)) static void compute_syndromes(struct bch_control *bch, uint32_t *ecc,
         unsigned int *syn)
{
 int i, j, s;
 unsigned int m;
 uint32_t poly;
 const int t = GF_T(bch);

 s = bch->ecc_bits;


 m = ((unsigned int)s) & 31;
 if (m)
  ecc[s/32] &= ~((1u << (32-m))-1);
 memset(syn, 0, 2*t*sizeof(*syn));


 do {
  poly = *ecc++;
  s -= 32;
  while (poly) {
   i = deg(poly);
   for (j = 0; j < 2*t; j += 2)
    syn[j] ^= a_pow(bch, (j+1)*(i+s));

   poly ^= (1 << i);
  }
 } while (s > 0);


 for (j = 0; j < t; j++)
  syn[2*j+1] = gf_sqr(bch, syn[j]);
}
