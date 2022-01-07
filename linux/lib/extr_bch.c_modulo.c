
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {int dummy; } ;


 unsigned int GF_M (struct bch_control*) ;
 unsigned int GF_N (struct bch_control*) ;

__attribute__((used)) static inline int modulo(struct bch_control *bch, unsigned int v)
{
 const unsigned int n = GF_N(bch);
 while (v >= n) {
  v -= n;
  v = (v & n) + (v >> GF_M(bch));
 }
 return v;
}
