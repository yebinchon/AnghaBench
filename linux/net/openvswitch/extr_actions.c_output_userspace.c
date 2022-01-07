
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int upcall ;
typedef int uint32_t ;
struct vport {int dev; } ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dp_upcall_info {int actions_len; struct nlattr const* actions; int egress_tun_info; int portid; struct nlattr const* userdata; int mru; int cmd; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {int mru; } ;


 TYPE_1__* OVS_CB (struct sk_buff*) ;
 int OVS_PACKET_CMD_ACTION ;




 int dev_fill_metadata_dst (int ,struct sk_buff*) ;
 int memset (struct dp_upcall_info*,int ,int) ;
 struct nlattr* nla_data (struct nlattr const*) ;
 int nla_get_u32 (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 struct nlattr* nla_next (struct nlattr const*,int*) ;
 int nla_type (struct nlattr const*) ;
 int ovs_dp_upcall (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct dp_upcall_info*,int ) ;
 struct vport* ovs_vport_rcu (struct datapath*,int ) ;
 int skb_tunnel_info (struct sk_buff*) ;

__attribute__((used)) static int output_userspace(struct datapath *dp, struct sk_buff *skb,
       struct sw_flow_key *key, const struct nlattr *attr,
       const struct nlattr *actions, int actions_len,
       uint32_t cutlen)
{
 struct dp_upcall_info upcall;
 const struct nlattr *a;
 int rem;

 memset(&upcall, 0, sizeof(upcall));
 upcall.cmd = OVS_PACKET_CMD_ACTION;
 upcall.mru = OVS_CB(skb)->mru;

 for (a = nla_data(attr), rem = nla_len(attr); rem > 0;
   a = nla_next(a, &rem)) {
  switch (nla_type(a)) {
  case 128:
   upcall.userdata = a;
   break;

  case 129:
   upcall.portid = nla_get_u32(a);
   break;

  case 130: {

   struct vport *vport;

   vport = ovs_vport_rcu(dp, nla_get_u32(a));
   if (vport) {
    int err;

    err = dev_fill_metadata_dst(vport->dev, skb);
    if (!err)
     upcall.egress_tun_info = skb_tunnel_info(skb);
   }

   break;
  }

  case 131: {

   upcall.actions = actions;
   upcall.actions_len = actions_len;
   break;
  }

  }
 }

 return ovs_dp_upcall(dp, skb, key, &upcall, cutlen);
}
