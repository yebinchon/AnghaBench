
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net_fill_args {int cmd; int nsid; int seq; int portid; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int RTNLGRP_NSID ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_net_fill (struct sk_buff*,struct net_fill_args*) ;
 int rtnl_net_get_size () ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,struct nlmsghdr*,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void rtnl_net_notifyid(struct net *net, int cmd, int id, u32 portid,
         struct nlmsghdr *nlh, gfp_t gfp)
{
 struct net_fill_args fillargs = {
  .portid = portid,
  .seq = nlh ? nlh->nlmsg_seq : 0,
  .cmd = cmd,
  .nsid = id,
 };
 struct sk_buff *msg;
 int err = -ENOMEM;

 msg = nlmsg_new(rtnl_net_get_size(), gfp);
 if (!msg)
  goto out;

 err = rtnl_net_fill(msg, &fillargs);
 if (err < 0)
  goto err_out;

 rtnl_notify(msg, net, portid, RTNLGRP_NSID, nlh, gfp);
 return;

err_out:
 nlmsg_free(msg);
out:
 rtnl_set_sk_err(net, RTNLGRP_NSID, err);
}
