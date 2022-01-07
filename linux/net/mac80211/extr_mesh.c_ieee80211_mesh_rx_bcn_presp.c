
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee802_11_elems {int * ds_params; scalar_t__ rsn; int mesh_config; int mesh_id; } ;
struct TYPE_14__ {int csa_active; int addr; } ;
struct TYPE_11__ {scalar_t__ rssi_threshold; } ;
struct ieee80211_if_mesh {scalar_t__ security; scalar_t__ csa_role; TYPE_6__* sync_ops; TYPE_4__ mshcfg; int user_mpm; } ;
struct TYPE_12__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_5__ u; struct ieee80211_local* local; } ;
struct ieee80211_rx_status {int band; int freq; scalar_t__ signal; } ;
struct TYPE_8__ {scalar_t__ variable; } ;
struct TYPE_9__ {TYPE_1__ probe_resp; } ;
struct ieee80211_mgmt {int sa; int bssid; TYPE_2__ u; int da; } ;
struct TYPE_10__ {int wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct ieee80211_channel {int flags; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_13__ {int (* rx_bcn_presp ) (struct ieee80211_sub_if_data*,int ,struct ieee80211_mgmt*,struct ieee802_11_elems*,struct ieee80211_rx_status*) ;} ;


 int IEEE80211_CHAN_DISABLED ;
 scalar_t__ IEEE80211_MESH_CSA_ROLE_INIT ;
 scalar_t__ IEEE80211_MESH_SEC_NONE ;
 int IEEE80211_STYPE_PROBE_RESP ;
 int ether_addr_equal (int ,int ) ;
 int ieee80211_channel_to_frequency (int ,int) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int) ;
 int ieee80211_mesh_process_chnswitch (struct ieee80211_sub_if_data*,struct ieee802_11_elems*,int) ;
 int ieee802_11_parse_elems (scalar_t__,size_t,int,struct ieee802_11_elems*,int ,int *) ;
 scalar_t__ mesh_matches_local (struct ieee80211_sub_if_data*,struct ieee802_11_elems*) ;
 int mesh_neighbour_update (struct ieee80211_sub_if_data*,int ,struct ieee802_11_elems*,struct ieee80211_rx_status*) ;
 int mpl_dbg (struct ieee80211_sub_if_data*,char*,scalar_t__,scalar_t__) ;
 int stub1 (struct ieee80211_sub_if_data*,int ,struct ieee80211_mgmt*,struct ieee802_11_elems*,struct ieee80211_rx_status*) ;

__attribute__((used)) static void ieee80211_mesh_rx_bcn_presp(struct ieee80211_sub_if_data *sdata,
     u16 stype,
     struct ieee80211_mgmt *mgmt,
     size_t len,
     struct ieee80211_rx_status *rx_status)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct ieee802_11_elems elems;
 struct ieee80211_channel *channel;
 size_t baselen;
 int freq;
 enum nl80211_band band = rx_status->band;


 if (stype == IEEE80211_STYPE_PROBE_RESP &&
     !ether_addr_equal(mgmt->da, sdata->vif.addr))
  return;

 baselen = (u8 *) mgmt->u.probe_resp.variable - (u8 *) mgmt;
 if (baselen > len)
  return;

 ieee802_11_parse_elems(mgmt->u.probe_resp.variable, len - baselen,
          0, &elems, mgmt->bssid, ((void*)0));


 if ((!elems.mesh_id || !elems.mesh_config) ||
     (elems.rsn && sdata->u.mesh.security == IEEE80211_MESH_SEC_NONE) ||
     (!elems.rsn && sdata->u.mesh.security != IEEE80211_MESH_SEC_NONE))
  return;

 if (elems.ds_params)
  freq = ieee80211_channel_to_frequency(elems.ds_params[0], band);
 else
  freq = rx_status->freq;

 channel = ieee80211_get_channel(local->hw.wiphy, freq);

 if (!channel || channel->flags & IEEE80211_CHAN_DISABLED)
  return;

 if (mesh_matches_local(sdata, &elems)) {
  mpl_dbg(sdata, "rssi_threshold=%d,rx_status->signal=%d\n",
   sdata->u.mesh.mshcfg.rssi_threshold, rx_status->signal);
  if (!sdata->u.mesh.user_mpm ||
      sdata->u.mesh.mshcfg.rssi_threshold == 0 ||
      sdata->u.mesh.mshcfg.rssi_threshold < rx_status->signal)
   mesh_neighbour_update(sdata, mgmt->sa, &elems,
           rx_status);
 }

 if (ifmsh->sync_ops)
  ifmsh->sync_ops->rx_bcn_presp(sdata,
   stype, mgmt, &elems, rx_status);

 if (ifmsh->csa_role != IEEE80211_MESH_CSA_ROLE_INIT &&
     !sdata->vif.csa_active)
  ieee80211_mesh_process_chnswitch(sdata, &elems, 1);
}
