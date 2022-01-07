
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {int* a_log_tab; } ;



__attribute__((used)) static inline int a_log(struct bch_control *bch, unsigned int x)
{
 return bch->a_log_tab[x];
}
