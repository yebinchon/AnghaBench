
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {unsigned int* a_pow_tab; int* a_log_tab; } ;


 size_t mod_s (struct bch_control*,int) ;

__attribute__((used)) static inline unsigned int gf_sqr(struct bch_control *bch, unsigned int a)
{
 return a ? bch->a_pow_tab[mod_s(bch, 2*bch->a_log_tab[a])] : 0;
}
