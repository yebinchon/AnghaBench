
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int vlan_proto; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct brnf_net {scalar_t__ pass_vlan_indev; } ;


 int VLAN_VID_MASK ;
 struct net_device* __vlan_find_dev_deep_rcu (struct net_device*,int ,int) ;
 struct net_device* bridge_parent (struct net_device const*) ;
 int brnf_net_id ;
 struct brnf_net* net_generic (struct net const*,int ) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static struct net_device *brnf_get_logical_dev(struct sk_buff *skb,
            const struct net_device *dev,
            const struct net *net)
{
 struct net_device *vlan, *br;
 struct brnf_net *brnet = net_generic(net, brnf_net_id);

 br = bridge_parent(dev);

 if (brnet->pass_vlan_indev == 0 || !skb_vlan_tag_present(skb))
  return br;

 vlan = __vlan_find_dev_deep_rcu(br, skb->vlan_proto,
        skb_vlan_tag_get(skb) & VLAN_VID_MASK);

 return vlan ? vlan : br;
}
