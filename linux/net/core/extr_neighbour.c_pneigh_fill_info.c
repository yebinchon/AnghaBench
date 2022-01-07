
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct pneigh_entry {int flags; scalar_t__ protocol; int key; TYPE_1__* dev; } ;
struct nlmsghdr {int dummy; } ;
struct neigh_table {int key_len; int family; } ;
struct ndmsg {int ndm_flags; int ndm_state; int ndm_ifindex; int ndm_type; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; int ndm_family; } ;
struct TYPE_2__ {int ifindex; } ;


 int EMSGSIZE ;
 int NDA_DST ;
 int NDA_PROTOCOL ;
 int NTF_PROXY ;
 int NUD_NONE ;
 int RTN_UNICAST ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int pneigh_fill_info(struct sk_buff *skb, struct pneigh_entry *pn,
       u32 pid, u32 seq, int type, unsigned int flags,
       struct neigh_table *tbl)
{
 struct nlmsghdr *nlh;
 struct ndmsg *ndm;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*ndm), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ndm = nlmsg_data(nlh);
 ndm->ndm_family = tbl->family;
 ndm->ndm_pad1 = 0;
 ndm->ndm_pad2 = 0;
 ndm->ndm_flags = pn->flags | NTF_PROXY;
 ndm->ndm_type = RTN_UNICAST;
 ndm->ndm_ifindex = pn->dev ? pn->dev->ifindex : 0;
 ndm->ndm_state = NUD_NONE;

 if (nla_put(skb, NDA_DST, tbl->key_len, pn->key))
  goto nla_put_failure;

 if (pn->protocol && nla_put_u8(skb, NDA_PROTOCOL, pn->protocol))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
