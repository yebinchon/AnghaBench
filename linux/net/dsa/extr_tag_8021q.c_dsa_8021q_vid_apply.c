
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {struct dsa_port* ports; } ;
struct dsa_port {struct dsa_port* cpu_dp; int slave; } ;
struct bridge_vlan_info {int flags; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int br_vlan_get_info (int ,int ,struct bridge_vlan_info*) ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 int dsa_port_vid_add (struct dsa_port*,int ,int ) ;
 int dsa_port_vid_del (struct dsa_port*,int ) ;

__attribute__((used)) static int dsa_8021q_vid_apply(struct dsa_switch *ds, int port, u16 vid,
          u16 flags, bool enabled)
{
 struct dsa_port *dp = &ds->ports[port];
 struct bridge_vlan_info vinfo;
 int err;

 if (enabled)
  return dsa_port_vid_add(dp, vid, flags);

 err = dsa_port_vid_del(dp, vid);
 if (err < 0)
  return err;






 if (!dsa_is_user_port(ds, port))
  return 0;

 err = br_vlan_get_info(dp->slave, vid, &vinfo);



 if (err < 0)
  return 0;


 err = dsa_port_vid_add(dp, vid, vinfo.flags);
 if (err < 0)
  return err;

 vinfo.flags &= ~BRIDGE_VLAN_INFO_PVID;

 return dsa_port_vid_add(dp->cpu_dp, vid, vinfo.flags);
}
