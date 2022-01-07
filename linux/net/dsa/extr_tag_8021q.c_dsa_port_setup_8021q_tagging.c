
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int num_ports; int dev; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int dev_err (int ,char*,int,int,int) ;
 int dsa_8021q_restore_pvid (struct dsa_switch*,int) ;
 int dsa_8021q_rx_vid (struct dsa_switch*,int) ;
 int dsa_8021q_tx_vid (struct dsa_switch*,int) ;
 int dsa_8021q_vid_apply (struct dsa_switch*,int,int,int,int) ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 int dsa_upstream_port (struct dsa_switch*,int) ;

int dsa_port_setup_8021q_tagging(struct dsa_switch *ds, int port, bool enabled)
{
 int upstream = dsa_upstream_port(ds, port);
 u16 rx_vid = dsa_8021q_rx_vid(ds, port);
 u16 tx_vid = dsa_8021q_tx_vid(ds, port);
 int i, err;




 if (!dsa_is_user_port(ds, port))
  return 0;






 for (i = 0; i < ds->num_ports; i++) {
  u16 flags;

  if (i == upstream)
   continue;
  else if (i == port)

   flags = BRIDGE_VLAN_INFO_UNTAGGED |
    BRIDGE_VLAN_INFO_PVID;
  else

   flags = BRIDGE_VLAN_INFO_UNTAGGED;

  err = dsa_8021q_vid_apply(ds, i, rx_vid, flags, enabled);
  if (err) {
   dev_err(ds->dev, "Failed to apply RX VID %d to port %d: %d\n",
    rx_vid, port, err);
   return err;
  }
 }




 err = dsa_8021q_vid_apply(ds, upstream, rx_vid, 0, enabled);
 if (err) {
  dev_err(ds->dev, "Failed to apply RX VID %d to port %d: %d\n",
   rx_vid, port, err);
  return err;
 }


 err = dsa_8021q_vid_apply(ds, port, tx_vid, BRIDGE_VLAN_INFO_UNTAGGED,
      enabled);
 if (err) {
  dev_err(ds->dev, "Failed to apply TX VID %d on port %d: %d\n",
   tx_vid, port, err);
  return err;
 }
 err = dsa_8021q_vid_apply(ds, upstream, tx_vid, 0, enabled);
 if (err) {
  dev_err(ds->dev, "Failed to apply TX VID %d on port %d: %d\n",
   tx_vid, upstream, err);
  return err;
 }

 if (!enabled)
  err = dsa_8021q_restore_pvid(ds, port);

 return err;
}
