
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int sk; } ;
struct pneigh_entry {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NTF_PROXY ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 int neigh_get_reply (struct net*,struct neighbour*,int ,int ) ;
 struct neighbour* neigh_lookup (struct neigh_table*,void*,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int neigh_valid_get_req (struct nlmsghdr*,struct neigh_table**,void**,int*,int*,struct netlink_ext_ack*) ;
 int pneigh_get_reply (struct net*,struct pneigh_entry*,int ,int ,struct neigh_table*) ;
 struct pneigh_entry* pneigh_lookup (struct neigh_table*,struct net*,void*,struct net_device*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int neigh_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
       struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(in_skb->sk);
 struct net_device *dev = ((void*)0);
 struct neigh_table *tbl = ((void*)0);
 struct neighbour *neigh;
 void *dst = ((void*)0);
 u8 ndm_flags = 0;
 int dev_idx = 0;
 int err;

 err = neigh_valid_get_req(nlh, &tbl, &dst, &dev_idx, &ndm_flags,
      extack);
 if (err < 0)
  return err;

 if (dev_idx) {
  dev = __dev_get_by_index(net, dev_idx);
  if (!dev) {
   NL_SET_ERR_MSG(extack, "Unknown device ifindex");
   return -ENODEV;
  }
 }

 if (!dst) {
  NL_SET_ERR_MSG(extack, "Network address not specified");
  return -EINVAL;
 }

 if (ndm_flags & NTF_PROXY) {
  struct pneigh_entry *pn;

  pn = pneigh_lookup(tbl, net, dst, dev, 0);
  if (!pn) {
   NL_SET_ERR_MSG(extack, "Proxy neighbour entry not found");
   return -ENOENT;
  }
  return pneigh_get_reply(net, pn, NETLINK_CB(in_skb).portid,
     nlh->nlmsg_seq, tbl);
 }

 if (!dev) {
  NL_SET_ERR_MSG(extack, "No device specified");
  return -EINVAL;
 }

 neigh = neigh_lookup(tbl, dst, dev);
 if (!neigh) {
  NL_SET_ERR_MSG(extack, "Neighbour entry not found");
  return -ENOENT;
 }

 err = neigh_get_reply(net, neigh, NETLINK_CB(in_skb).portid,
         nlh->nlmsg_seq);

 neigh_release(neigh);

 return err;
}
