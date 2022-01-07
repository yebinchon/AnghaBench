
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct dcbmsg {scalar_t__ dcb_pad; int cmd; int dcb_family; } ;


 int AF_UNSPEC ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 struct dcbmsg* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;

__attribute__((used)) static struct sk_buff *dcbnl_newmsg(int type, u8 cmd, u32 port, u32 seq,
        u32 flags, struct nlmsghdr **nlhp)
{
 struct sk_buff *skb;
 struct dcbmsg *dcb;
 struct nlmsghdr *nlh;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 nlh = nlmsg_put(skb, port, seq, type, sizeof(*dcb), flags);
 BUG_ON(!nlh);

 dcb = nlmsg_data(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = cmd;
 dcb->dcb_pad = 0;

 if (nlhp)
  *nlhp = nlh;

 return skb;
}
