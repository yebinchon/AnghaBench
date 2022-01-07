
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct net_device {int ifindex; } ;
struct canfd_frame {int dummy; } ;
struct can_skb_priv {int dummy; } ;
struct bcm_op {int cfsiz; int currframe; int nframes; int frames_abs; int sk; int ifindex; struct canfd_frame* frames; } ;
struct TYPE_2__ {scalar_t__ skbcnt; int ifindex; } ;


 struct sk_buff* alloc_skb (int ,int ) ;
 int can_send (struct sk_buff*,int) ;
 TYPE_1__* can_skb_prv (struct sk_buff*) ;
 int can_skb_reserve (struct sk_buff*) ;
 int can_skb_set_owner (struct sk_buff*,int ) ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_put (struct net_device*) ;
 int gfp_any () ;
 int skb_put_data (struct sk_buff*,struct canfd_frame*,int) ;
 int sock_net (int ) ;

__attribute__((used)) static void bcm_can_tx(struct bcm_op *op)
{
 struct sk_buff *skb;
 struct net_device *dev;
 struct canfd_frame *cf = op->frames + op->cfsiz * op->currframe;


 if (!op->ifindex)
  return;

 dev = dev_get_by_index(sock_net(op->sk), op->ifindex);
 if (!dev) {

  return;
 }

 skb = alloc_skb(op->cfsiz + sizeof(struct can_skb_priv), gfp_any());
 if (!skb)
  goto out;

 can_skb_reserve(skb);
 can_skb_prv(skb)->ifindex = dev->ifindex;
 can_skb_prv(skb)->skbcnt = 0;

 skb_put_data(skb, cf, op->cfsiz);


 skb->dev = dev;
 can_skb_set_owner(skb, op->sk);
 can_send(skb, 1);


 op->currframe++;
 op->frames_abs++;


 if (op->currframe >= op->nframes)
  op->currframe = 0;
out:
 dev_put(dev);
}
