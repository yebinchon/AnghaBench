
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; scalar_t__ rtm_flags; int rtm_type; int rtm_scope; int rtm_protocol; int rtm_table; scalar_t__ rtm_tos; scalar_t__ rtm_src_len; int rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int ifindex; } ;


 int AF_PHONET ;
 int EMSGSIZE ;
 int RTA_DST ;
 int RTA_OIF ;
 int RTN_UNICAST ;
 int RTPROT_STATIC ;
 int RT_SCOPE_UNIVERSE ;
 int RT_TABLE_MAIN ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;

__attribute__((used)) static int fill_route(struct sk_buff *skb, struct net_device *dev, u8 dst,
   u32 portid, u32 seq, int event)
{
 struct rtmsg *rtm;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*rtm), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 rtm = nlmsg_data(nlh);
 rtm->rtm_family = AF_PHONET;
 rtm->rtm_dst_len = 6;
 rtm->rtm_src_len = 0;
 rtm->rtm_tos = 0;
 rtm->rtm_table = RT_TABLE_MAIN;
 rtm->rtm_protocol = RTPROT_STATIC;
 rtm->rtm_scope = RT_SCOPE_UNIVERSE;
 rtm->rtm_type = RTN_UNICAST;
 rtm->rtm_flags = 0;
 if (nla_put_u8(skb, RTA_DST, dst) ||
     nla_put_u32(skb, RTA_OIF, dev->ifindex))
  goto nla_put_failure;
 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
