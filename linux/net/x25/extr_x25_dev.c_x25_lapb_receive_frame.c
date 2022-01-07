
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;
struct sk_buff {int* data; } ;
struct packet_type {int dummy; } ;
struct net_device {int name; } ;


 int GFP_ATOMIC ;



 int dev_net (struct net_device*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int *) ;
 int pr_debug (char*,int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 struct x25_neigh* x25_get_neigh (struct net_device*) ;
 int x25_link_established (struct x25_neigh*) ;
 int x25_link_terminated (struct x25_neigh*) ;
 int x25_neigh_put (struct x25_neigh*) ;
 int x25_receive_data (struct sk_buff*,struct x25_neigh*) ;

int x25_lapb_receive_frame(struct sk_buff *skb, struct net_device *dev,
      struct packet_type *ptype, struct net_device *orig_dev)
{
 struct sk_buff *nskb;
 struct x25_neigh *nb;

 if (!net_eq(dev_net(dev), &init_net))
  goto drop;

 nskb = skb_copy(skb, GFP_ATOMIC);
 if (!nskb)
  goto drop;
 kfree_skb(skb);
 skb = nskb;




 nb = x25_get_neigh(dev);
 if (!nb) {
  pr_debug("unknown neighbour - %s\n", dev->name);
  goto drop;
 }

 if (!pskb_may_pull(skb, 1))
  return 0;

 switch (skb->data[0]) {

 case 129:
  skb_pull(skb, 1);
  if (x25_receive_data(skb, nb)) {
   x25_neigh_put(nb);
   goto out;
  }
  break;

 case 130:
  x25_link_established(nb);
  break;

 case 128:
  x25_link_terminated(nb);
  break;
 }
 x25_neigh_put(nb);
drop:
 kfree_skb(skb);
out:
 return 0;
}
