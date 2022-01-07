
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct vport {int dev; } ;
struct sw_flow_actions {int dummy; } ;
struct TYPE_6__ {int in_port; int skb_mark; int priority; } ;
struct TYPE_7__ {TYPE_1__ phy; } ;
struct sw_flow {TYPE_2__ key; int sf_acts; } ;
struct sk_buff {int ignore_df; int dev; int mark; int priority; int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct ovs_header* userhdr; } ;
struct datapath {int dummy; } ;
struct TYPE_8__ {struct vport* input_vport; int mru; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sw_flow*) ;
 scalar_t__ NET_IP_ALIGN ;
 int OVSP_LOCAL ;
 TYPE_5__* OVS_CB (struct sk_buff*) ;
 size_t OVS_PACKET_ATTR_ACTIONS ;
 size_t OVS_PACKET_ATTR_KEY ;
 size_t OVS_PACKET_ATTR_MRU ;
 size_t OVS_PACKET_ATTR_PACKET ;
 size_t OVS_PACKET_ATTR_PROBE ;
 int PTR_ERR (struct sw_flow*) ;
 struct sk_buff* __dev_alloc_skb (scalar_t__,int ) ;
 int __skb_put (struct sk_buff*,int) ;
 struct datapath* get_dp_rcu (struct net*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_memcpy (int ,struct nlattr*,int) ;
 int ovs_execute_actions (struct datapath*,struct sk_buff*,struct sw_flow_actions*,TYPE_2__*) ;
 struct sw_flow* ovs_flow_alloc () ;
 int ovs_flow_free (struct sw_flow*,int) ;
 int ovs_flow_key_extract_userspace (struct net*,struct nlattr*,struct sk_buff*,TYPE_2__*,int) ;
 int ovs_nla_copy_actions (struct net*,struct nlattr*,TYPE_2__*,struct sw_flow_actions**,int) ;
 struct vport* ovs_vport_rcu (struct datapath*,int ) ;
 int rcu_assign_pointer (int ,struct sw_flow_actions*) ;
 struct sw_flow_actions* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ovs_packet_cmd_execute(struct sk_buff *skb, struct genl_info *info)
{
 struct ovs_header *ovs_header = info->userhdr;
 struct net *net = sock_net(skb->sk);
 struct nlattr **a = info->attrs;
 struct sw_flow_actions *acts;
 struct sk_buff *packet;
 struct sw_flow *flow;
 struct sw_flow_actions *sf_acts;
 struct datapath *dp;
 struct vport *input_vport;
 u16 mru = 0;
 int len;
 int err;
 bool log = !a[OVS_PACKET_ATTR_PROBE];

 err = -EINVAL;
 if (!a[OVS_PACKET_ATTR_PACKET] || !a[OVS_PACKET_ATTR_KEY] ||
     !a[OVS_PACKET_ATTR_ACTIONS])
  goto err;

 len = nla_len(a[OVS_PACKET_ATTR_PACKET]);
 packet = __dev_alloc_skb(NET_IP_ALIGN + len, GFP_KERNEL);
 err = -ENOMEM;
 if (!packet)
  goto err;
 skb_reserve(packet, NET_IP_ALIGN);

 nla_memcpy(__skb_put(packet, len), a[OVS_PACKET_ATTR_PACKET], len);


 if (a[OVS_PACKET_ATTR_MRU]) {
  mru = nla_get_u16(a[OVS_PACKET_ATTR_MRU]);
  packet->ignore_df = 1;
 }
 OVS_CB(packet)->mru = mru;


 flow = ovs_flow_alloc();
 err = PTR_ERR(flow);
 if (IS_ERR(flow))
  goto err_kfree_skb;

 err = ovs_flow_key_extract_userspace(net, a[OVS_PACKET_ATTR_KEY],
          packet, &flow->key, log);
 if (err)
  goto err_flow_free;

 err = ovs_nla_copy_actions(net, a[OVS_PACKET_ATTR_ACTIONS],
       &flow->key, &acts, log);
 if (err)
  goto err_flow_free;

 rcu_assign_pointer(flow->sf_acts, acts);
 packet->priority = flow->key.phy.priority;
 packet->mark = flow->key.phy.skb_mark;

 rcu_read_lock();
 dp = get_dp_rcu(net, ovs_header->dp_ifindex);
 err = -ENODEV;
 if (!dp)
  goto err_unlock;

 input_vport = ovs_vport_rcu(dp, flow->key.phy.in_port);
 if (!input_vport)
  input_vport = ovs_vport_rcu(dp, OVSP_LOCAL);

 if (!input_vport)
  goto err_unlock;

 packet->dev = input_vport->dev;
 OVS_CB(packet)->input_vport = input_vport;
 sf_acts = rcu_dereference(flow->sf_acts);

 local_bh_disable();
 err = ovs_execute_actions(dp, packet, sf_acts, &flow->key);
 local_bh_enable();
 rcu_read_unlock();

 ovs_flow_free(flow, 0);
 return err;

err_unlock:
 rcu_read_unlock();
err_flow_free:
 ovs_flow_free(flow, 0);
err_kfree_skb:
 kfree_skb(packet);
err:
 return err;
}
