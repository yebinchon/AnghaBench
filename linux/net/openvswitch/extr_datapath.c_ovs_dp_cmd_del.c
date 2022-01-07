
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct genl_info {int snd_seq; int snd_portid; int attrs; int userhdr; } ;
struct datapath {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct datapath*) ;
 int OVS_DP_CMD_DEL ;
 int PTR_ERR (struct datapath*) ;
 int __dp_destroy (struct datapath*) ;
 int dp_datapath_genl_family ;
 int kfree_skb (struct sk_buff*) ;
 struct datapath* lookup_datapath (int ,int ,int ) ;
 struct sk_buff* ovs_dp_cmd_alloc_info () ;
 int ovs_dp_cmd_fill_info (struct datapath*,struct sk_buff*,int ,int ,int ,int ) ;
 int ovs_lock () ;
 int ovs_notify (int *,struct sk_buff*,struct genl_info*) ;
 int ovs_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_dp_cmd_del(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *reply;
 struct datapath *dp;
 int err;

 reply = ovs_dp_cmd_alloc_info();
 if (!reply)
  return -ENOMEM;

 ovs_lock();
 dp = lookup_datapath(sock_net(skb->sk), info->userhdr, info->attrs);
 err = PTR_ERR(dp);
 if (IS_ERR(dp))
  goto err_unlock_free;

 err = ovs_dp_cmd_fill_info(dp, reply, info->snd_portid,
       info->snd_seq, 0, OVS_DP_CMD_DEL);
 BUG_ON(err < 0);

 __dp_destroy(dp);
 ovs_unlock();

 ovs_notify(&dp_datapath_genl_family, reply, info);

 return 0;

err_unlock_free:
 ovs_unlock();
 kfree_skb(reply);
 return err;
}
