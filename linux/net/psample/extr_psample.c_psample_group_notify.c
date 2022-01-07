
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct psample_group {int net; } ;
typedef enum psample_command { ____Placeholder_psample_command } psample_command ;


 int GFP_ATOMIC ;
 int NLMSG_DEFAULT_SIZE ;
 int NLM_F_MULTI ;
 int PSAMPLE_NL_MCGRP_CONFIG ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int psample_group_nl_fill (struct sk_buff*,struct psample_group*,int,int ,int ,int ) ;
 int psample_nl_family ;

__attribute__((used)) static void psample_group_notify(struct psample_group *group,
     enum psample_command cmd)
{
 struct sk_buff *msg;
 int err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!msg)
  return;

 err = psample_group_nl_fill(msg, group, cmd, 0, 0, NLM_F_MULTI);
 if (!err)
  genlmsg_multicast_netns(&psample_nl_family, group->net, msg, 0,
     PSAMPLE_NL_MCGRP_CONFIG, GFP_ATOMIC);
 else
  nlmsg_free(msg);
}
