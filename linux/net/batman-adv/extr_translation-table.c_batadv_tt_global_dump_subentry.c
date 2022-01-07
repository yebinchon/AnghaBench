
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct batadv_tt_orig_list_entry {int flags; int ttvn; TYPE_2__* orig_node; } ;
struct batadv_tt_common_entry {int flags; int vid; int addr; } ;
struct TYPE_3__ {int crc; } ;
struct batadv_orig_node_vlan {TYPE_1__ tt; } ;
struct TYPE_4__ {int orig; int last_ttvn; } ;


 int BATADV_ATTR_FLAG_BEST ;
 int BATADV_ATTR_ORIG_ADDRESS ;
 int BATADV_ATTR_TT_ADDRESS ;
 int BATADV_ATTR_TT_CRC32 ;
 int BATADV_ATTR_TT_FLAGS ;
 int BATADV_ATTR_TT_LAST_TTVN ;
 int BATADV_ATTR_TT_TTVN ;
 int BATADV_ATTR_TT_VID ;
 int BATADV_CMD_GET_TRANSTABLE_GLOBAL ;
 int BATADV_TT_SYNC_MASK ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 int atomic_read (int *) ;
 int batadv_netlink_family ;
 struct batadv_orig_node_vlan* batadv_orig_node_vlan_get (TYPE_2__*,int ) ;
 int batadv_orig_node_vlan_put (struct batadv_orig_node_vlan*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int,int,int *,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
batadv_tt_global_dump_subentry(struct sk_buff *msg, u32 portid, u32 seq,
          struct batadv_tt_common_entry *common,
          struct batadv_tt_orig_list_entry *orig,
          bool best)
{
 u16 flags = (common->flags & (~BATADV_TT_SYNC_MASK)) | orig->flags;
 void *hdr;
 struct batadv_orig_node_vlan *vlan;
 u8 last_ttvn;
 u32 crc;

 vlan = batadv_orig_node_vlan_get(orig->orig_node,
      common->vid);
 if (!vlan)
  return 0;

 crc = vlan->tt.crc;

 batadv_orig_node_vlan_put(vlan);

 hdr = genlmsg_put(msg, portid, seq, &batadv_netlink_family,
     NLM_F_MULTI,
     BATADV_CMD_GET_TRANSTABLE_GLOBAL);
 if (!hdr)
  return -ENOBUFS;

 last_ttvn = atomic_read(&orig->orig_node->last_ttvn);

 if (nla_put(msg, BATADV_ATTR_TT_ADDRESS, ETH_ALEN, common->addr) ||
     nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
      orig->orig_node->orig) ||
     nla_put_u8(msg, BATADV_ATTR_TT_TTVN, orig->ttvn) ||
     nla_put_u8(msg, BATADV_ATTR_TT_LAST_TTVN, last_ttvn) ||
     nla_put_u32(msg, BATADV_ATTR_TT_CRC32, crc) ||
     nla_put_u16(msg, BATADV_ATTR_TT_VID, common->vid) ||
     nla_put_u32(msg, BATADV_ATTR_TT_FLAGS, flags))
  goto nla_put_failure;

 if (best && nla_put_flag(msg, BATADV_ATTR_FLAG_BEST))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
