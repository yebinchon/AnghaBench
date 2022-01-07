
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kmem_cache_free (int ,struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_ext_put (struct sk_buff*) ;
 int skbuff_head_cache ;

__attribute__((used)) static void napi_skb_free_stolen_head(struct sk_buff *skb)
{
 skb_dst_drop(skb);
 skb_ext_put(skb);
 kmem_cache_free(skbuff_head_cache, skb);
}
