
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int priority; } ;
struct l2cap_chan {int dummy; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;
struct TYPE_4__ {TYPE_1__ l2cap; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int HCI_PRIO_MAX ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (unsigned long,int ) ;

__attribute__((used)) static struct sk_buff *smp_alloc_skb_cb(struct l2cap_chan *chan,
     unsigned long hdr_len,
     unsigned long len, int nb)
{
 struct sk_buff *skb;

 skb = bt_skb_alloc(hdr_len + len, GFP_KERNEL);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 skb->priority = HCI_PRIO_MAX;
 bt_cb(skb)->l2cap.chan = chan;

 return skb;
}
