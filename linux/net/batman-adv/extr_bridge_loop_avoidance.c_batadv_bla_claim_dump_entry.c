
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_2__* nlh; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct batadv_bla_claim {TYPE_3__* backbone_gw; int vid; int addr; } ;
struct TYPE_6__ {int orig; int crc_lock; int crc; } ;
struct TYPE_5__ {int nlmsg_seq; } ;
struct TYPE_4__ {int * dev_addr; } ;


 int BATADV_ATTR_BLA_ADDRESS ;
 int BATADV_ATTR_BLA_BACKBONE ;
 int BATADV_ATTR_BLA_CRC ;
 int BATADV_ATTR_BLA_OWN ;
 int BATADV_ATTR_BLA_VID ;
 int BATADV_CMD_GET_BLA_CLAIM ;
 int EINVAL ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 int batadv_compare_eth (int ,int *) ;
 int batadv_netlink_family ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
batadv_bla_claim_dump_entry(struct sk_buff *msg, u32 portid,
       struct netlink_callback *cb,
       struct batadv_hard_iface *primary_if,
       struct batadv_bla_claim *claim)
{
 u8 *primary_addr = primary_if->net_dev->dev_addr;
 u16 backbone_crc;
 bool is_own;
 void *hdr;
 int ret = -EINVAL;

 hdr = genlmsg_put(msg, portid, cb->nlh->nlmsg_seq,
     &batadv_netlink_family, NLM_F_MULTI,
     BATADV_CMD_GET_BLA_CLAIM);
 if (!hdr) {
  ret = -ENOBUFS;
  goto out;
 }

 genl_dump_check_consistent(cb, hdr);

 is_own = batadv_compare_eth(claim->backbone_gw->orig,
        primary_addr);

 spin_lock_bh(&claim->backbone_gw->crc_lock);
 backbone_crc = claim->backbone_gw->crc;
 spin_unlock_bh(&claim->backbone_gw->crc_lock);

 if (is_own)
  if (nla_put_flag(msg, BATADV_ATTR_BLA_OWN)) {
   genlmsg_cancel(msg, hdr);
   goto out;
  }

 if (nla_put(msg, BATADV_ATTR_BLA_ADDRESS, ETH_ALEN, claim->addr) ||
     nla_put_u16(msg, BATADV_ATTR_BLA_VID, claim->vid) ||
     nla_put(msg, BATADV_ATTR_BLA_BACKBONE, ETH_ALEN,
      claim->backbone_gw->orig) ||
     nla_put_u16(msg, BATADV_ATTR_BLA_CRC,
   backbone_crc)) {
  genlmsg_cancel(msg, hdr);
  goto out;
 }

 genlmsg_end(msg, hdr);
 ret = 0;

out:
 return ret;
}
