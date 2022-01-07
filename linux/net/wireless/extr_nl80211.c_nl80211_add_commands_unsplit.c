
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ max_sched_scan_reqs; } ;
struct cfg80211_registered_device {TYPE_2__* ops; TYPE_1__ wiphy; } ;
struct TYPE_4__ {scalar_t__ deauth; scalar_t__ disconnect; scalar_t__ auth; scalar_t__ connect; scalar_t__ join_mesh; scalar_t__ start_ap; scalar_t__ set_monitor_channel; } ;


 int ASSOCIATE ;
 int AUTHENTICATE ;
 int CMD (int ,int ) ;
 int DEAUTHENTICATE ;
 int DEL_PMKSA ;
 int DISASSOCIATE ;
 int ENOBUFS ;
 int FLUSH_PMKSA ;
 int FRAME ;
 int FRAME_WAIT_CANCEL ;
 int JOIN_IBSS ;
 int JOIN_MESH ;
 int NEW_INTERFACE ;
 int NEW_KEY ;
 int NEW_MPATH ;
 int NEW_STATION ;
 int NL80211_CMD_CONNECT ;
 int NL80211_CMD_DISCONNECT ;
 int NL80211_CMD_REGISTER_BEACONS ;
 int NL80211_CMD_SET_CHANNEL ;
 int NL80211_CMD_SET_WIPHY_NETNS ;
 int PROBE_CLIENT ;
 int REMAIN_ON_CHANNEL ;
 int SET_BSS ;
 int SET_INTERFACE ;
 int SET_MCAST_RATE ;
 int SET_MESH_CONFIG ;
 int SET_NOACK_MAP ;
 int SET_PMKSA ;
 int SET_TX_BITRATE_MASK ;
 int SET_WDS_PEER ;
 int START_AP ;
 int START_P2P_DEVICE ;
 int START_SCHED_SCAN ;
 int TDLS_MGMT ;
 int TDLS_OPER ;
 int TESTMODE ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int WIPHY_FLAG_NETNS_OK ;
 int WIPHY_FLAG_REPORTS_OBSS ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int add_key ;
 int add_mpath ;
 int add_station ;
 int add_virtual_intf ;
 int assoc ;
 int auth ;
 int change_bss ;
 int change_virtual_intf ;
 int deauth ;
 int del_pmksa ;
 int disassoc ;
 int flush_pmksa ;
 int join_ibss ;
 int join_mesh ;
 int mgmt_tx ;
 int mgmt_tx_cancel_wait ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int,int ) ;
 int probe_client ;
 int remain_on_channel ;
 int sched_scan_start ;
 int set_bitrate_mask ;
 int set_mcast_rate ;
 int set_noack_map ;
 int set_pmksa ;
 int set_wds_peer ;
 int start_ap ;
 int start_p2p_device ;
 int tdls_mgmt ;
 int tdls_oper ;
 int testmode_cmd ;
 int update_mesh_config ;

__attribute__((used)) static int nl80211_add_commands_unsplit(struct cfg80211_registered_device *rdev,
     struct sk_buff *msg)
{
 int i = 0;






 CMD(add_virtual_intf, NEW_INTERFACE);
 CMD(change_virtual_intf, SET_INTERFACE);
 CMD(add_key, NEW_KEY);
 CMD(start_ap, START_AP);
 CMD(add_station, NEW_STATION);
 CMD(add_mpath, NEW_MPATH);
 CMD(update_mesh_config, SET_MESH_CONFIG);
 CMD(change_bss, SET_BSS);
 CMD(auth, AUTHENTICATE);
 CMD(assoc, ASSOCIATE);
 CMD(deauth, DEAUTHENTICATE);
 CMD(disassoc, DISASSOCIATE);
 CMD(join_ibss, JOIN_IBSS);
 CMD(join_mesh, JOIN_MESH);
 CMD(set_pmksa, SET_PMKSA);
 CMD(del_pmksa, DEL_PMKSA);
 CMD(flush_pmksa, FLUSH_PMKSA);
 if (rdev->wiphy.flags & WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL)
  CMD(remain_on_channel, REMAIN_ON_CHANNEL);
 CMD(set_bitrate_mask, SET_TX_BITRATE_MASK);
 CMD(mgmt_tx, FRAME);
 CMD(mgmt_tx_cancel_wait, FRAME_WAIT_CANCEL);
 if (rdev->wiphy.flags & WIPHY_FLAG_NETNS_OK) {
  i++;
  if (nla_put_u32(msg, i, NL80211_CMD_SET_WIPHY_NETNS))
   goto nla_put_failure;
 }
 if (rdev->ops->set_monitor_channel || rdev->ops->start_ap ||
     rdev->ops->join_mesh) {
  i++;
  if (nla_put_u32(msg, i, NL80211_CMD_SET_CHANNEL))
   goto nla_put_failure;
 }
 CMD(set_wds_peer, SET_WDS_PEER);
 if (rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_TDLS) {
  CMD(tdls_mgmt, TDLS_MGMT);
  CMD(tdls_oper, TDLS_OPER);
 }
 if (rdev->wiphy.max_sched_scan_reqs)
  CMD(sched_scan_start, START_SCHED_SCAN);
 CMD(probe_client, PROBE_CLIENT);
 CMD(set_noack_map, SET_NOACK_MAP);
 if (rdev->wiphy.flags & WIPHY_FLAG_REPORTS_OBSS) {
  i++;
  if (nla_put_u32(msg, i, NL80211_CMD_REGISTER_BEACONS))
   goto nla_put_failure;
 }
 CMD(start_p2p_device, START_P2P_DEVICE);
 CMD(set_mcast_rate, SET_MCAST_RATE);




 if (rdev->ops->connect || rdev->ops->auth) {
  i++;
  if (nla_put_u32(msg, i, NL80211_CMD_CONNECT))
   goto nla_put_failure;
 }

 if (rdev->ops->disconnect || rdev->ops->deauth) {
  i++;
  if (nla_put_u32(msg, i, NL80211_CMD_DISCONNECT))
   goto nla_put_failure;
 }

 return i;
 nla_put_failure:
 return -ENOBUFS;
}
