
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set {int dummy; } ;
struct nft_rhash {int gc_work; } ;


 int nft_set_gc_interval (struct nft_set const*) ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void nft_rhash_gc_init(const struct nft_set *set)
{
 struct nft_rhash *priv = nft_set_priv(set);

 queue_delayed_work(system_power_efficient_wq, &priv->gc_work,
      nft_set_gc_interval(set));
}
