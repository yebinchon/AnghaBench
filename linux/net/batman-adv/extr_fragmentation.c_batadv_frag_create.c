
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; scalar_t__ len; int priority; } ;
struct batadv_frag_packet {int dummy; } ;


 scalar_t__ ETH_HLEN ;
 int memcpy (int ,struct batadv_frag_packet*,unsigned int) ;
 struct sk_buff* netdev_alloc_skb (int *,scalar_t__) ;
 int skb_push (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_split (struct sk_buff*,struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *batadv_frag_create(struct sk_buff *skb,
       struct batadv_frag_packet *frag_head,
       unsigned int fragment_size)
{
 struct sk_buff *skb_fragment;
 unsigned int header_size = sizeof(*frag_head);
 unsigned int mtu = fragment_size + header_size;

 skb_fragment = netdev_alloc_skb(((void*)0), mtu + ETH_HLEN);
 if (!skb_fragment)
  goto err;

 skb_fragment->priority = skb->priority;


 skb_reserve(skb_fragment, header_size + ETH_HLEN);
 skb_split(skb, skb_fragment, skb->len - fragment_size);


 skb_push(skb_fragment, header_size);
 memcpy(skb_fragment->data, frag_head, header_size);

err:
 return skb_fragment;
}
