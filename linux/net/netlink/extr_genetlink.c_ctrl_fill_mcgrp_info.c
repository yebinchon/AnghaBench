
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_multicast_group {int name; } ;
struct genl_family {int id; int name; } ;


 int CTRL_ATTR_FAMILY_ID ;
 int CTRL_ATTR_FAMILY_NAME ;
 int CTRL_ATTR_MCAST_GROUPS ;
 int CTRL_ATTR_MCAST_GRP_ID ;
 int CTRL_ATTR_MCAST_GRP_NAME ;
 int EMSGSIZE ;
 int genl_ctrl ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int ctrl_fill_mcgrp_info(const struct genl_family *family,
    const struct genl_multicast_group *grp,
    int grp_id, u32 portid, u32 seq, u32 flags,
    struct sk_buff *skb, u8 cmd)
{
 void *hdr;
 struct nlattr *nla_grps;
 struct nlattr *nest;

 hdr = genlmsg_put(skb, portid, seq, &genl_ctrl, flags, cmd);
 if (hdr == ((void*)0))
  return -1;

 if (nla_put_string(skb, CTRL_ATTR_FAMILY_NAME, family->name) ||
     nla_put_u16(skb, CTRL_ATTR_FAMILY_ID, family->id))
  goto nla_put_failure;

 nla_grps = nla_nest_start_noflag(skb, CTRL_ATTR_MCAST_GROUPS);
 if (nla_grps == ((void*)0))
  goto nla_put_failure;

 nest = nla_nest_start_noflag(skb, 1);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (nla_put_u32(skb, CTRL_ATTR_MCAST_GRP_ID, grp_id) ||
     nla_put_string(skb, CTRL_ATTR_MCAST_GRP_NAME,
      grp->name))
  goto nla_put_failure;

 nla_nest_end(skb, nest);
 nla_nest_end(skb, nla_grps);

 genlmsg_end(skb, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(skb, hdr);
 return -EMSGSIZE;
}
