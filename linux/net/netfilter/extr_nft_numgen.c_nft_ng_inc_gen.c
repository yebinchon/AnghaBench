
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nft_ng_inc {scalar_t__ modulus; scalar_t__ offset; int counter; } ;


 scalar_t__ atomic_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static u32 nft_ng_inc_gen(struct nft_ng_inc *priv)
{
 u32 nval, oval;

 do {
  oval = atomic_read(&priv->counter);
  nval = (oval + 1 < priv->modulus) ? oval + 1 : 0;
 } while (atomic_cmpxchg(&priv->counter, oval, nval) != oval);

 return nval + priv->offset;
}
