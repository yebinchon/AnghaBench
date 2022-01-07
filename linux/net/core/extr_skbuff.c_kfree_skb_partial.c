
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __kfree_skb (struct sk_buff*) ;
 int kmem_cache_free (int ,struct sk_buff*) ;
 int skb_release_head_state (struct sk_buff*) ;
 int skbuff_head_cache ;

void kfree_skb_partial(struct sk_buff *skb, bool head_stolen)
{
 if (head_stolen) {
  skb_release_head_state(skb);
  kmem_cache_free(skbuff_head_cache, skb);
 } else {
  __kfree_skb(skb);
 }
}
