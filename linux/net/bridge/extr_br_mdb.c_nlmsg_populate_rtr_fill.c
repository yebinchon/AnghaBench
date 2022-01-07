
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct br_port_msg {int ifindex; int family; } ;


 int AF_BRIDGE ;
 int EMSGSIZE ;
 int MDBA_ROUTER ;
 int MDBA_ROUTER_PORT ;
 int memset (struct br_port_msg*,int ,int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct br_port_msg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;

__attribute__((used)) static int nlmsg_populate_rtr_fill(struct sk_buff *skb,
       struct net_device *dev,
       int ifindex, u32 pid,
       u32 seq, int type, unsigned int flags)
{
 struct br_port_msg *bpm;
 struct nlmsghdr *nlh;
 struct nlattr *nest;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*bpm), 0);
 if (!nlh)
  return -EMSGSIZE;

 bpm = nlmsg_data(nlh);
 memset(bpm, 0, sizeof(*bpm));
 bpm->family = AF_BRIDGE;
 bpm->ifindex = dev->ifindex;
 nest = nla_nest_start_noflag(skb, MDBA_ROUTER);
 if (!nest)
  goto cancel;

 if (nla_put_u32(skb, MDBA_ROUTER_PORT, ifindex))
  goto end;

 nla_nest_end(skb, nest);
 nlmsg_end(skb, nlh);
 return 0;

end:
 nla_nest_end(skb, nest);
cancel:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
