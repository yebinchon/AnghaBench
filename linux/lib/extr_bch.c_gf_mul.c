
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {unsigned int* a_pow_tab; scalar_t__* a_log_tab; } ;


 size_t mod_s (struct bch_control*,scalar_t__) ;

__attribute__((used)) static inline unsigned int gf_mul(struct bch_control *bch, unsigned int a,
      unsigned int b)
{
 return (a && b) ? bch->a_pow_tab[mod_s(bch, bch->a_log_tab[a]+
            bch->a_log_tab[b])] : 0;
}
