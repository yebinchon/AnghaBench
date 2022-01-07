
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vif_device {int remote; int local; int pkt_out; int pkt_in; int bytes_out; int bytes_in; int flags; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct mr_table {struct vif_device* vif_table; } ;
struct TYPE_2__ {size_t ifindex; } ;


 int IPMRA_VIF ;
 int IPMRA_VIFA_BYTES_IN ;
 int IPMRA_VIFA_BYTES_OUT ;
 int IPMRA_VIFA_FLAGS ;
 int IPMRA_VIFA_IFINDEX ;
 int IPMRA_VIFA_LOCAL_ADDR ;
 int IPMRA_VIFA_PACKETS_IN ;
 int IPMRA_VIFA_PACKETS_OUT ;
 int IPMRA_VIFA_PAD ;
 int IPMRA_VIFA_REMOTE_ADDR ;
 int IPMRA_VIFA_VIF_ID ;
 int VIF_EXISTS (struct mr_table*,size_t) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,size_t) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static bool ipmr_fill_vif(struct mr_table *mrt, u32 vifid, struct sk_buff *skb)
{
 struct nlattr *vif_nest;
 struct vif_device *vif;


 if (!VIF_EXISTS(mrt, vifid))
  return 1;

 vif = &mrt->vif_table[vifid];
 vif_nest = nla_nest_start_noflag(skb, IPMRA_VIF);
 if (!vif_nest)
  return 0;
 if (nla_put_u32(skb, IPMRA_VIFA_IFINDEX, vif->dev->ifindex) ||
     nla_put_u32(skb, IPMRA_VIFA_VIF_ID, vifid) ||
     nla_put_u16(skb, IPMRA_VIFA_FLAGS, vif->flags) ||
     nla_put_u64_64bit(skb, IPMRA_VIFA_BYTES_IN, vif->bytes_in,
         IPMRA_VIFA_PAD) ||
     nla_put_u64_64bit(skb, IPMRA_VIFA_BYTES_OUT, vif->bytes_out,
         IPMRA_VIFA_PAD) ||
     nla_put_u64_64bit(skb, IPMRA_VIFA_PACKETS_IN, vif->pkt_in,
         IPMRA_VIFA_PAD) ||
     nla_put_u64_64bit(skb, IPMRA_VIFA_PACKETS_OUT, vif->pkt_out,
         IPMRA_VIFA_PAD) ||
     nla_put_be32(skb, IPMRA_VIFA_LOCAL_ADDR, vif->local) ||
     nla_put_be32(skb, IPMRA_VIFA_REMOTE_ADDR, vif->remote)) {
  nla_nest_cancel(skb, vif_nest);
  return 0;
 }
 nla_nest_end(skb, vif_nest);

 return 1;
}
