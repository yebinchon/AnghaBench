
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {unsigned int* a_pow_tab; size_t* a_log_tab; } ;


 size_t GF_N (struct bch_control*) ;

__attribute__((used)) static inline unsigned int gf_inv(struct bch_control *bch, unsigned int a)
{
 return bch->a_pow_tab[GF_N(bch)-bch->a_log_tab[a]];
}
