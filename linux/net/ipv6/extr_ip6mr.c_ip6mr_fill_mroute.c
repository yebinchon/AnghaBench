
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; scalar_t__ rtm_flags; int rtm_protocol; int rtm_scope; int rtm_type; int rtm_table; scalar_t__ rtm_tos; int rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct mr_table {int id; } ;
struct TYPE_2__ {int mfc_flags; } ;
struct mfc6_cache {TYPE_1__ _c; int mf6c_mcastgrp; int mf6c_origin; } ;


 int EMSGSIZE ;
 int ENOENT ;
 int MFC_STATIC ;
 int RTA_DST ;
 int RTA_SRC ;
 int RTA_TABLE ;
 int RTNL_FAMILY_IP6MR ;
 int RTN_MULTICAST ;
 int RTPROT_MROUTED ;
 int RTPROT_STATIC ;
 int RT_SCOPE_UNIVERSE ;
 int mr_fill_mroute (struct mr_table*,struct sk_buff*,TYPE_1__*,struct rtmsg*) ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int) ;

__attribute__((used)) static int ip6mr_fill_mroute(struct mr_table *mrt, struct sk_buff *skb,
        u32 portid, u32 seq, struct mfc6_cache *c, int cmd,
        int flags)
{
 struct nlmsghdr *nlh;
 struct rtmsg *rtm;
 int err;

 nlh = nlmsg_put(skb, portid, seq, cmd, sizeof(*rtm), flags);
 if (!nlh)
  return -EMSGSIZE;

 rtm = nlmsg_data(nlh);
 rtm->rtm_family = RTNL_FAMILY_IP6MR;
 rtm->rtm_dst_len = 128;
 rtm->rtm_src_len = 128;
 rtm->rtm_tos = 0;
 rtm->rtm_table = mrt->id;
 if (nla_put_u32(skb, RTA_TABLE, mrt->id))
  goto nla_put_failure;
 rtm->rtm_type = RTN_MULTICAST;
 rtm->rtm_scope = RT_SCOPE_UNIVERSE;
 if (c->_c.mfc_flags & MFC_STATIC)
  rtm->rtm_protocol = RTPROT_STATIC;
 else
  rtm->rtm_protocol = RTPROT_MROUTED;
 rtm->rtm_flags = 0;

 if (nla_put_in6_addr(skb, RTA_SRC, &c->mf6c_origin) ||
     nla_put_in6_addr(skb, RTA_DST, &c->mf6c_mcastgrp))
  goto nla_put_failure;
 err = mr_fill_mroute(mrt, skb, &c->_c, rtm);

 if (err < 0 && err != -ENOENT)
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
