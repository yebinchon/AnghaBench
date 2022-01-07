
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct sk_buff {int sk; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct ovs_header* userhdr; struct nlattr** attrs; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct vport*) ;
 int OVS_VPORT_CMD_GET ;
 int PTR_ERR (struct vport*) ;
 int genl_info_net (struct genl_info*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 struct vport* lookup_vport (int ,struct ovs_header*,struct nlattr**) ;
 struct sk_buff* ovs_vport_cmd_alloc_info () ;
 int ovs_vport_cmd_fill_info (struct vport*,struct sk_buff*,int ,int ,int ,int ,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_get(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct ovs_header *ovs_header = info->userhdr;
 struct sk_buff *reply;
 struct vport *vport;
 int err;

 reply = ovs_vport_cmd_alloc_info();
 if (!reply)
  return -ENOMEM;

 rcu_read_lock();
 vport = lookup_vport(sock_net(skb->sk), ovs_header, a);
 err = PTR_ERR(vport);
 if (IS_ERR(vport))
  goto exit_unlock_free;
 err = ovs_vport_cmd_fill_info(vport, reply, genl_info_net(info),
          info->snd_portid, info->snd_seq, 0,
          OVS_VPORT_CMD_GET, GFP_ATOMIC);
 BUG_ON(err < 0);
 rcu_read_unlock();

 return genlmsg_reply(reply, info);

exit_unlock_free:
 rcu_read_unlock();
 kfree_skb(reply);
 return err;
}
