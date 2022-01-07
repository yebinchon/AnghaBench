
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {unsigned int* a_pow_tab; } ;


 size_t modulo (struct bch_control*,int) ;

__attribute__((used)) static inline unsigned int a_pow(struct bch_control *bch, int i)
{
 return bch->a_pow_tab[modulo(bch, i)];
}
