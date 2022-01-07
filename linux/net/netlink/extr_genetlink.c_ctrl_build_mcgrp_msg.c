
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct genl_multicast_group {int dummy; } ;
struct genl_family {int dummy; } ;


 int ENOBUFS ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int ctrl_fill_mcgrp_info (struct genl_family const*,struct genl_multicast_group const*,int,int ,int,int ,struct sk_buff*,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static struct sk_buff *
ctrl_build_mcgrp_msg(const struct genl_family *family,
       const struct genl_multicast_group *grp,
       int grp_id, u32 portid, int seq, u8 cmd)
{
 struct sk_buff *skb;
 int err;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb == ((void*)0))
  return ERR_PTR(-ENOBUFS);

 err = ctrl_fill_mcgrp_info(family, grp, grp_id, portid,
       seq, 0, skb, cmd);
 if (err < 0) {
  nlmsg_free(skb);
  return ERR_PTR(err);
 }

 return skb;
}
