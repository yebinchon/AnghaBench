
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vport_parms {int port_no; struct nlattr* upcall_portids; struct datapath* dp; struct nlattr* options; void* type; int name; } ;
struct vport {int dev; } ;
struct sk_buff {int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct datapath {unsigned int max_headroom; } ;


 int BUG_ON (int) ;
 int DP_MAX_PORTS ;
 int EAGAIN ;
 int EBUSY ;
 int EFBIG ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct vport*) ;
 size_t OVS_VPORT_ATTR_IFINDEX ;
 size_t OVS_VPORT_ATTR_NAME ;
 size_t OVS_VPORT_ATTR_OPTIONS ;
 size_t OVS_VPORT_ATTR_PORT_NO ;
 size_t OVS_VPORT_ATTR_TYPE ;
 size_t OVS_VPORT_ATTR_UPCALL_PID ;
 int OVS_VPORT_CMD_NEW ;
 int PTR_ERR (struct vport*) ;
 int dp_vport_genl_family ;
 int genl_info_net (struct genl_info*) ;
 struct datapath* get_dp (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int netdev_get_fwd_headroom (int ) ;
 int netdev_set_rx_headroom (int ,unsigned int) ;
 struct vport* new_vport (struct vport_parms*) ;
 int nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int ovs_lock () ;
 int ovs_notify (int *,struct sk_buff*,struct genl_info*) ;
 int ovs_unlock () ;
 int ovs_update_headroom (struct datapath*,unsigned int) ;
 struct sk_buff* ovs_vport_cmd_alloc_info () ;
 int ovs_vport_cmd_fill_info (struct vport*,struct sk_buff*,int ,int ,int ,int ,int ,int ) ;
 struct vport* ovs_vport_ovsl (struct datapath*,int) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_new(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct ovs_header *ovs_header = info->userhdr;
 struct vport_parms parms;
 struct sk_buff *reply;
 struct vport *vport;
 struct datapath *dp;
 unsigned int new_headroom;
 u32 port_no;
 int err;

 if (!a[OVS_VPORT_ATTR_NAME] || !a[OVS_VPORT_ATTR_TYPE] ||
     !a[OVS_VPORT_ATTR_UPCALL_PID])
  return -EINVAL;
 if (a[OVS_VPORT_ATTR_IFINDEX])
  return -EOPNOTSUPP;

 port_no = a[OVS_VPORT_ATTR_PORT_NO]
  ? nla_get_u32(a[OVS_VPORT_ATTR_PORT_NO]) : 0;
 if (port_no >= DP_MAX_PORTS)
  return -EFBIG;

 reply = ovs_vport_cmd_alloc_info();
 if (!reply)
  return -ENOMEM;

 ovs_lock();
restart:
 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 err = -ENODEV;
 if (!dp)
  goto exit_unlock_free;

 if (port_no) {
  vport = ovs_vport_ovsl(dp, port_no);
  err = -EBUSY;
  if (vport)
   goto exit_unlock_free;
 } else {
  for (port_no = 1; ; port_no++) {
   if (port_no >= DP_MAX_PORTS) {
    err = -EFBIG;
    goto exit_unlock_free;
   }
   vport = ovs_vport_ovsl(dp, port_no);
   if (!vport)
    break;
  }
 }

 parms.name = nla_data(a[OVS_VPORT_ATTR_NAME]);
 parms.type = nla_get_u32(a[OVS_VPORT_ATTR_TYPE]);
 parms.options = a[OVS_VPORT_ATTR_OPTIONS];
 parms.dp = dp;
 parms.port_no = port_no;
 parms.upcall_portids = a[OVS_VPORT_ATTR_UPCALL_PID];

 vport = new_vport(&parms);
 err = PTR_ERR(vport);
 if (IS_ERR(vport)) {
  if (err == -EAGAIN)
   goto restart;
  goto exit_unlock_free;
 }

 err = ovs_vport_cmd_fill_info(vport, reply, genl_info_net(info),
          info->snd_portid, info->snd_seq, 0,
          OVS_VPORT_CMD_NEW, GFP_KERNEL);

 new_headroom = netdev_get_fwd_headroom(vport->dev);

 if (new_headroom > dp->max_headroom)
  ovs_update_headroom(dp, new_headroom);
 else
  netdev_set_rx_headroom(vport->dev, dp->max_headroom);

 BUG_ON(err < 0);
 ovs_unlock();

 ovs_notify(&dp_vport_genl_family, reply, info);
 return 0;

exit_unlock_free:
 ovs_unlock();
 kfree_skb(reply);
 return err;
}
