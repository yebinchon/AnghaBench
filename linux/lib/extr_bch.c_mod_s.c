
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {int dummy; } ;


 unsigned int GF_N (struct bch_control*) ;

__attribute__((used)) static inline int mod_s(struct bch_control *bch, unsigned int v)
{
 const unsigned int n = GF_N(bch);
 return (v < n) ? v : v-n;
}
