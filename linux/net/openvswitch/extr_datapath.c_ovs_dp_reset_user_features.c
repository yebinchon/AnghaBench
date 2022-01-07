
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct genl_info {int attrs; int userhdr; } ;
struct datapath {scalar_t__ user_features; } ;


 scalar_t__ IS_ERR (struct datapath*) ;
 int WARN (scalar_t__,char*) ;
 struct datapath* lookup_datapath (int ,int ,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static void ovs_dp_reset_user_features(struct sk_buff *skb, struct genl_info *info)
{
 struct datapath *dp;

 dp = lookup_datapath(sock_net(skb->sk), info->userhdr, info->attrs);
 if (IS_ERR(dp))
  return;

 WARN(dp->user_features, "Dropping previously announced user features\n");
 dp->user_features = 0;
}
