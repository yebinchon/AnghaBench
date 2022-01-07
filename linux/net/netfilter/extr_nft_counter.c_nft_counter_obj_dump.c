
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_counter_percpu_priv {int dummy; } ;


 int nft_counter_do_dump (struct sk_buff*,struct nft_counter_percpu_priv*,int) ;
 struct nft_counter_percpu_priv* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static int nft_counter_obj_dump(struct sk_buff *skb,
    struct nft_object *obj, bool reset)
{
 struct nft_counter_percpu_priv *priv = nft_obj_data(obj);

 return nft_counter_do_dump(skb, priv, reset);
}
