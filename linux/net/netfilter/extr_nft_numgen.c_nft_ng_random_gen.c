
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rnd_state {int dummy; } ;
struct nft_ng_random {scalar_t__ offset; int modulus; } ;


 int nft_numgen_prandom_state ;
 int prandom_u32_state (struct rnd_state*) ;
 scalar_t__ reciprocal_scale (int ,int ) ;
 struct rnd_state* this_cpu_ptr (int *) ;

__attribute__((used)) static u32 nft_ng_random_gen(struct nft_ng_random *priv)
{
 struct rnd_state *state = this_cpu_ptr(&nft_numgen_prandom_state);

 return reciprocal_scale(prandom_u32_state(state), priv->modulus) +
        priv->offset;
}
