
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {scalar_t__ port_no; int dev; struct datapath* dp; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; int userhdr; struct nlattr** attrs; } ;
struct datapath {unsigned int max_headroom; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct vport*) ;
 scalar_t__ OVSP_LOCAL ;
 int OVS_VPORT_CMD_DEL ;
 int PTR_ERR (struct vport*) ;
 int dp_vport_genl_family ;
 int genl_info_net (struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 struct vport* lookup_vport (int ,int ,struct nlattr**) ;
 unsigned int netdev_get_fwd_headroom (int ) ;
 int netdev_reset_rx_headroom (int ) ;
 int ovs_dp_detach_port (struct vport*) ;
 unsigned int ovs_get_max_headroom (struct datapath*) ;
 int ovs_lock () ;
 int ovs_notify (int *,struct sk_buff*,struct genl_info*) ;
 int ovs_unlock () ;
 int ovs_update_headroom (struct datapath*,unsigned int) ;
 struct sk_buff* ovs_vport_cmd_alloc_info () ;
 int ovs_vport_cmd_fill_info (struct vport*,struct sk_buff*,int ,int ,int ,int ,int ,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_del(struct sk_buff *skb, struct genl_info *info)
{
 bool update_headroom = 0;
 struct nlattr **a = info->attrs;
 struct sk_buff *reply;
 struct datapath *dp;
 struct vport *vport;
 unsigned int new_headroom;
 int err;

 reply = ovs_vport_cmd_alloc_info();
 if (!reply)
  return -ENOMEM;

 ovs_lock();
 vport = lookup_vport(sock_net(skb->sk), info->userhdr, a);
 err = PTR_ERR(vport);
 if (IS_ERR(vport))
  goto exit_unlock_free;

 if (vport->port_no == OVSP_LOCAL) {
  err = -EINVAL;
  goto exit_unlock_free;
 }

 err = ovs_vport_cmd_fill_info(vport, reply, genl_info_net(info),
          info->snd_portid, info->snd_seq, 0,
          OVS_VPORT_CMD_DEL, GFP_KERNEL);
 BUG_ON(err < 0);


 dp = vport->dp;
 if (netdev_get_fwd_headroom(vport->dev) == dp->max_headroom)
  update_headroom = 1;

 netdev_reset_rx_headroom(vport->dev);
 ovs_dp_detach_port(vport);

 if (update_headroom) {
  new_headroom = ovs_get_max_headroom(dp);

  if (new_headroom < dp->max_headroom)
   ovs_update_headroom(dp, new_headroom);
 }
 ovs_unlock();

 ovs_notify(&dp_vport_genl_family, reply, info);
 return 0;

exit_unlock_free:
 ovs_unlock();
 kfree_skb(reply);
 return err;
}
