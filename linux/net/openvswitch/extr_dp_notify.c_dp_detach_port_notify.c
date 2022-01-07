
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {struct datapath* dp; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int OVS_VPORT_CMD_DEL ;
 int PTR_ERR (struct sk_buff*) ;
 int dp_vport_genl_family ;
 int genl_set_err (int *,int ,int ,int ,int ) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int ovs_dp_detach_port (struct vport*) ;
 int ovs_dp_get_net (struct datapath*) ;
 struct sk_buff* ovs_vport_cmd_build_info (struct vport*,int ,int ,int ,int ) ;

__attribute__((used)) static void dp_detach_port_notify(struct vport *vport)
{
 struct sk_buff *notify;
 struct datapath *dp;

 dp = vport->dp;
 notify = ovs_vport_cmd_build_info(vport, ovs_dp_get_net(dp),
       0, 0, OVS_VPORT_CMD_DEL);
 ovs_dp_detach_port(vport);
 if (IS_ERR(notify)) {
  genl_set_err(&dp_vport_genl_family, ovs_dp_get_net(dp), 0,
        0, PTR_ERR(notify));
  return;
 }

 genlmsg_multicast_netns(&dp_vport_genl_family,
    ovs_dp_get_net(dp), notify, 0,
    0, GFP_KERNEL);
}
