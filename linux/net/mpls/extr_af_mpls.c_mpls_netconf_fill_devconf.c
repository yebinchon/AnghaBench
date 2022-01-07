
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netconfmsg {int ncm_family; } ;
struct mpls_dev {int input_enabled; TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;


 int AF_MPLS ;
 int EMSGSIZE ;
 int NETCONFA_ALL ;
 int NETCONFA_IFINDEX ;
 int NETCONFA_INPUT ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct netconfmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int mpls_netconf_fill_devconf(struct sk_buff *skb, struct mpls_dev *mdev,
         u32 portid, u32 seq, int event,
         unsigned int flags, int type)
{
 struct nlmsghdr *nlh;
 struct netconfmsg *ncm;
 bool all = 0;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(struct netconfmsg),
   flags);
 if (!nlh)
  return -EMSGSIZE;

 if (type == NETCONFA_ALL)
  all = 1;

 ncm = nlmsg_data(nlh);
 ncm->ncm_family = AF_MPLS;

 if (nla_put_s32(skb, NETCONFA_IFINDEX, mdev->dev->ifindex) < 0)
  goto nla_put_failure;

 if ((all || type == NETCONFA_INPUT) &&
     nla_put_s32(skb, NETCONFA_INPUT,
   mdev->input_enabled) < 0)
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
