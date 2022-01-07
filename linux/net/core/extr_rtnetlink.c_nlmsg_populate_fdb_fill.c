
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int ifindex; } ;
struct ndmsg {unsigned int ndm_flags; scalar_t__ ndm_state; int ndm_ifindex; scalar_t__ ndm_type; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; int ndm_family; } ;


 int AF_BRIDGE ;
 int EMSGSIZE ;
 int ETH_ALEN ;
 int NDA_LLADDR ;
 int NDA_VLAN ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,scalar_t__*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int) ;

__attribute__((used)) static int nlmsg_populate_fdb_fill(struct sk_buff *skb,
       struct net_device *dev,
       u8 *addr, u16 vid, u32 pid, u32 seq,
       int type, unsigned int flags,
       int nlflags, u16 ndm_state)
{
 struct nlmsghdr *nlh;
 struct ndmsg *ndm;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*ndm), nlflags);
 if (!nlh)
  return -EMSGSIZE;

 ndm = nlmsg_data(nlh);
 ndm->ndm_family = AF_BRIDGE;
 ndm->ndm_pad1 = 0;
 ndm->ndm_pad2 = 0;
 ndm->ndm_flags = flags;
 ndm->ndm_type = 0;
 ndm->ndm_ifindex = dev->ifindex;
 ndm->ndm_state = ndm_state;

 if (nla_put(skb, NDA_LLADDR, ETH_ALEN, addr))
  goto nla_put_failure;
 if (vid)
  if (nla_put(skb, NDA_VLAN, sizeof(u16), &vid))
   goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
