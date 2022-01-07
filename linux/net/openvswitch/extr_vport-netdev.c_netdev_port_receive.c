
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {int dummy; } ;
struct sk_buff {int data; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 struct vport* ovs_netdev_get_vport (TYPE_1__*) ;
 int ovs_vport_receive (struct vport*,struct sk_buff*,int ) ;
 int skb_postpush_rcsum (struct sk_buff*,int ,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_tunnel_info (struct sk_buff*) ;
 int skb_warn_if_lro (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void netdev_port_receive(struct sk_buff *skb)
{
 struct vport *vport;

 vport = ovs_netdev_get_vport(skb->dev);
 if (unlikely(!vport))
  goto error;

 if (unlikely(skb_warn_if_lro(skb)))
  goto error;




 skb = skb_share_check(skb, GFP_ATOMIC);
 if (unlikely(!skb))
  return;

 if (skb->dev->type == ARPHRD_ETHER) {
  skb_push(skb, ETH_HLEN);
  skb_postpush_rcsum(skb, skb->data, ETH_HLEN);
 }
 ovs_vport_receive(vport, skb, skb_tunnel_info(skb));
 return;
error:
 kfree_skb(skb);
}
