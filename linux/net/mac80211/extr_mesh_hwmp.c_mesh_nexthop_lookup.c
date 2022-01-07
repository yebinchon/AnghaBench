
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int addr; } ;
struct sta_info {TYPE_4__ sta; } ;
struct sk_buff {scalar_t__ data; } ;
struct mesh_path {int flags; int next_hop; scalar_t__ exp_time; } ;
struct TYPE_10__ {int addr; } ;
struct TYPE_6__ {int path_refresh_time; } ;
struct TYPE_7__ {TYPE_1__ mshcfg; } ;
struct TYPE_8__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_3__ u; } ;
struct ieee80211_hdr {int addr2; int addr1; int addr4; int * addr3; } ;


 int ENOENT ;
 int ETH_ALEN ;
 int MESH_PATH_ACTIVE ;
 int MESH_PATH_FIXED ;
 int MESH_PATH_RESOLVING ;
 int PREQ_Q_F_REFRESH ;
 int PREQ_Q_F_START ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ieee80211_mps_set_frame_flags (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee80211_hdr*) ;
 int jiffies ;
 int memcpy (int ,int ,int ) ;
 struct mesh_path* mesh_path_lookup (struct ieee80211_sub_if_data*,int *) ;
 int mesh_queue_preq (struct mesh_path*,int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct sta_info* rcu_dereference (int ) ;
 scalar_t__ time_after (int ,scalar_t__) ;

int mesh_nexthop_lookup(struct ieee80211_sub_if_data *sdata,
   struct sk_buff *skb)
{
 struct mesh_path *mpath;
 struct sta_info *next_hop;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 u8 *target_addr = hdr->addr3;

 mpath = mesh_path_lookup(sdata, target_addr);
 if (!mpath || !(mpath->flags & MESH_PATH_ACTIVE))
  return -ENOENT;

 if (time_after(jiffies,
         mpath->exp_time -
         msecs_to_jiffies(sdata->u.mesh.mshcfg.path_refresh_time)) &&
     ether_addr_equal(sdata->vif.addr, hdr->addr4) &&
     !(mpath->flags & MESH_PATH_RESOLVING) &&
     !(mpath->flags & MESH_PATH_FIXED))
  mesh_queue_preq(mpath, PREQ_Q_F_START | PREQ_Q_F_REFRESH);

 next_hop = rcu_dereference(mpath->next_hop);
 if (next_hop) {
  memcpy(hdr->addr1, next_hop->sta.addr, ETH_ALEN);
  memcpy(hdr->addr2, sdata->vif.addr, ETH_ALEN);
  ieee80211_mps_set_frame_flags(sdata, next_hop, hdr);
  return 0;
 }

 return -ENOENT;
}
