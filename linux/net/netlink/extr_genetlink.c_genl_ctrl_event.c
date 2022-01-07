
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_multicast_group {int dummy; } ;
struct genl_family {int netnsok; } ;
struct TYPE_3__ {int genl_sock; } ;


 int BUG_ON (int) ;




 int EINVAL ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int WARN_ON (struct genl_multicast_group const*) ;
 struct sk_buff* ctrl_build_family_msg (struct genl_family const*,int ,int ,int) ;
 struct sk_buff* ctrl_build_mcgrp_msg (struct genl_family const*,struct genl_multicast_group const*,int,int ,int ,int) ;
 int genl_ctrl ;
 int genlmsg_multicast_allns (int *,struct sk_buff*,int ,int ,int ) ;
 int genlmsg_multicast_netns (int *,TYPE_1__*,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ init_net ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int genl_ctrl_event(int event, const struct genl_family *family,
      const struct genl_multicast_group *grp,
      int grp_id)
{
 struct sk_buff *msg;


 if (!init_net.genl_sock)
  return 0;

 switch (event) {
 case 129:
 case 131:
  WARN_ON(grp);
  msg = ctrl_build_family_msg(family, 0, 0, event);
  break;
 case 128:
 case 130:
  BUG_ON(!grp);
  msg = ctrl_build_mcgrp_msg(family, grp, grp_id, 0, 0, event);
  break;
 default:
  return -EINVAL;
 }

 if (IS_ERR(msg))
  return PTR_ERR(msg);

 if (!family->netnsok) {
  genlmsg_multicast_netns(&genl_ctrl, &init_net, msg, 0,
     0, GFP_KERNEL);
 } else {
  rcu_read_lock();
  genlmsg_multicast_allns(&genl_ctrl, msg, 0,
     0, GFP_ATOMIC);
  rcu_read_unlock();
 }

 return 0;
}
