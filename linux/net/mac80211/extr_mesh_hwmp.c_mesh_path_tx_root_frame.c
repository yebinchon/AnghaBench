
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {int dot11MeshHWMPRootMode; int element_ttl; int dot11MeshHWMPactivePathToRootTimeout; scalar_t__ dot11MeshGateAnnouncementProtocol; int dot11MeshHWMPRannInterval; } ;
struct ieee80211_if_mesh {int preq_id; TYPE_3__ mshcfg; int sn; } ;
struct TYPE_4__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_1__ u; } ;


 int IEEE80211_PREQ_PROACTIVE_PREP_FLAG ;
 int IEEE80211_PREQ_TO_FLAG ;
 int IEEE80211_PREQ_USN_FLAG ;



 int MPATH_PREQ ;
 int MPATH_RANN ;
 int RANN_FLAG_IS_GATE ;
 scalar_t__ broadcast_addr ;
 int mesh_path_sel_frame_tx (int ,int,int ,int ,int,int*,int ,scalar_t__,int ,int ,int ,int ,int ,struct ieee80211_sub_if_data*) ;
 int mhwmp_dbg (struct ieee80211_sub_if_data*,char*) ;

void mesh_path_tx_root_frame(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 u32 interval = ifmsh->mshcfg.dot11MeshHWMPRannInterval;
 u8 flags, target_flags = 0;

 flags = (ifmsh->mshcfg.dot11MeshGateAnnouncementProtocol)
   ? RANN_FLAG_IS_GATE : 0;

 switch (ifmsh->mshcfg.dot11MeshHWMPRootMode) {
 case 128:
  mesh_path_sel_frame_tx(MPATH_RANN, flags, sdata->vif.addr,
           ++ifmsh->sn, 0, ((void*)0), 0, broadcast_addr,
           0, ifmsh->mshcfg.element_ttl,
           interval, 0, 0, sdata);
  break;
 case 129:
  flags |= IEEE80211_PREQ_PROACTIVE_PREP_FLAG;

 case 130:
  interval = ifmsh->mshcfg.dot11MeshHWMPactivePathToRootTimeout;
  target_flags |= IEEE80211_PREQ_TO_FLAG |
    IEEE80211_PREQ_USN_FLAG;
  mesh_path_sel_frame_tx(MPATH_PREQ, flags, sdata->vif.addr,
           ++ifmsh->sn, target_flags,
           (u8 *) broadcast_addr, 0, broadcast_addr,
           0, ifmsh->mshcfg.element_ttl, interval,
           0, ifmsh->preq_id++, sdata);
  break;
 default:
  mhwmp_dbg(sdata, "Proactive mechanism not supported\n");
  return;
 }
}
