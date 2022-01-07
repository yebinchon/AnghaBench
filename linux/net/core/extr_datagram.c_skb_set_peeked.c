
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int peeked; TYPE_1__* next; TYPE_2__* prev; } ;
struct TYPE_4__ {struct sk_buff* next; } ;
struct TYPE_3__ {struct sk_buff* prev; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int consume_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_shared (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *skb_set_peeked(struct sk_buff *skb)
{
 struct sk_buff *nskb;

 if (skb->peeked)
  return skb;


 if (!skb_shared(skb))
  goto done;

 nskb = skb_clone(skb, GFP_ATOMIC);
 if (!nskb)
  return ERR_PTR(-ENOMEM);

 skb->prev->next = nskb;
 skb->next->prev = nskb;
 nskb->prev = skb->prev;
 nskb->next = skb->next;

 consume_skb(skb);
 skb = nskb;

done:
 skb->peeked = 1;

 return skb;
}
