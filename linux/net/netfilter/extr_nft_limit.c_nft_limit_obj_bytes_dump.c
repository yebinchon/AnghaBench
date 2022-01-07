
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_limit {int dummy; } ;


 int NFT_LIMIT_PKT_BYTES ;
 int nft_limit_dump (struct sk_buff*,struct nft_limit const*,int ) ;
 struct nft_limit* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static int nft_limit_obj_bytes_dump(struct sk_buff *skb,
        struct nft_object *obj,
        bool reset)
{
 const struct nft_limit *priv = nft_obj_data(obj);

 return nft_limit_dump(skb, priv, NFT_LIMIT_PKT_BYTES);
}
