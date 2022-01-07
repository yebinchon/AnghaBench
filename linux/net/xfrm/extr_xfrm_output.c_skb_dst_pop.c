
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* dst_clone (int ) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int xfrm_dst_child (int ) ;

__attribute__((used)) static struct dst_entry *skb_dst_pop(struct sk_buff *skb)
{
 struct dst_entry *child = dst_clone(xfrm_dst_child(skb_dst(skb)));

 skb_dst_drop(skb);
 return child;
}
