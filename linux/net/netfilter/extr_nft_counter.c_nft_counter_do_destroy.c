
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_counter_percpu_priv {int counter; } ;


 int free_percpu (int ) ;

__attribute__((used)) static void nft_counter_do_destroy(struct nft_counter_percpu_priv *priv)
{
 free_percpu(priv->counter);
}
