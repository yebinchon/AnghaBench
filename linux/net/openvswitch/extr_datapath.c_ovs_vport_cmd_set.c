
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* ops; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; int userhdr; struct nlattr** attrs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct vport*) ;
 size_t OVS_VPORT_ATTR_OPTIONS ;
 size_t OVS_VPORT_ATTR_TYPE ;
 size_t OVS_VPORT_ATTR_UPCALL_PID ;
 int OVS_VPORT_CMD_SET ;
 int PTR_ERR (struct vport*) ;
 int dp_vport_genl_family ;
 int genl_info_net (struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 struct vport* lookup_vport (int ,int ,struct nlattr**) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int ovs_lock () ;
 int ovs_notify (int *,struct sk_buff*,struct genl_info*) ;
 int ovs_unlock () ;
 struct sk_buff* ovs_vport_cmd_alloc_info () ;
 int ovs_vport_cmd_fill_info (struct vport*,struct sk_buff*,int ,int ,int ,int ,int ,int ) ;
 int ovs_vport_set_options (struct vport*,struct nlattr*) ;
 int ovs_vport_set_upcall_portids (struct vport*,struct nlattr*) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_set(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct sk_buff *reply;
 struct vport *vport;
 int err;

 reply = ovs_vport_cmd_alloc_info();
 if (!reply)
  return -ENOMEM;

 ovs_lock();
 vport = lookup_vport(sock_net(skb->sk), info->userhdr, a);
 err = PTR_ERR(vport);
 if (IS_ERR(vport))
  goto exit_unlock_free;

 if (a[OVS_VPORT_ATTR_TYPE] &&
     nla_get_u32(a[OVS_VPORT_ATTR_TYPE]) != vport->ops->type) {
  err = -EINVAL;
  goto exit_unlock_free;
 }

 if (a[OVS_VPORT_ATTR_OPTIONS]) {
  err = ovs_vport_set_options(vport, a[OVS_VPORT_ATTR_OPTIONS]);
  if (err)
   goto exit_unlock_free;
 }


 if (a[OVS_VPORT_ATTR_UPCALL_PID]) {
  struct nlattr *ids = a[OVS_VPORT_ATTR_UPCALL_PID];

  err = ovs_vport_set_upcall_portids(vport, ids);
  if (err)
   goto exit_unlock_free;
 }

 err = ovs_vport_cmd_fill_info(vport, reply, genl_info_net(info),
          info->snd_portid, info->snd_seq, 0,
          OVS_VPORT_CMD_SET, GFP_KERNEL);
 BUG_ON(err < 0);

 ovs_unlock();
 ovs_notify(&dp_vport_genl_family, reply, info);
 return 0;

exit_unlock_free:
 ovs_unlock();
 kfree_skb(reply);
 return err;
}
