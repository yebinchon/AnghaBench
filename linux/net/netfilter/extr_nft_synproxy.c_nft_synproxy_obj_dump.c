
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_synproxy {int dummy; } ;
struct nft_object {int dummy; } ;


 struct nft_synproxy* nft_obj_data (struct nft_object*) ;
 int nft_synproxy_do_dump (struct sk_buff*,struct nft_synproxy*) ;

__attribute__((used)) static int nft_synproxy_obj_dump(struct sk_buff *skb,
     struct nft_object *obj, bool reset)
{
 struct nft_synproxy *priv = nft_obj_data(obj);

 return nft_synproxy_do_dump(skb, priv);
}
