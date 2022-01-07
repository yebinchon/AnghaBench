
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {int lock; scalar_t__ key_len; } ;
struct ndmsg {int ndm_flags; int ndm_family; scalar_t__ ndm_ifindex; } ;
struct TYPE_2__ {int portid; } ;


 int ASSERT_RTNL () ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int NDA_DST ;
 int NEIGH_UPDATE_F_ADMIN ;
 int NEIGH_UPDATE_F_OVERRIDE ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NTF_PROXY ;
 int NUD_FAILED ;
 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 int __neigh_update (struct neighbour*,int *,int ,int,int ,struct netlink_ext_ack*) ;
 struct neigh_table* neigh_find_table (int ) ;
 struct neighbour* neigh_lookup (struct neigh_table*,int ,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int neigh_remove_one (struct neighbour*,struct neigh_table*) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int nlmsg_len (struct nlmsghdr*) ;
 int pneigh_delete (struct neigh_table*,struct net*,int ,struct net_device*) ;
 struct net* sock_net (int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int neigh_delete(struct sk_buff *skb, struct nlmsghdr *nlh,
   struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct ndmsg *ndm;
 struct nlattr *dst_attr;
 struct neigh_table *tbl;
 struct neighbour *neigh;
 struct net_device *dev = ((void*)0);
 int err = -EINVAL;

 ASSERT_RTNL();
 if (nlmsg_len(nlh) < sizeof(*ndm))
  goto out;

 dst_attr = nlmsg_find_attr(nlh, sizeof(*ndm), NDA_DST);
 if (!dst_attr) {
  NL_SET_ERR_MSG(extack, "Network address not specified");
  goto out;
 }

 ndm = nlmsg_data(nlh);
 if (ndm->ndm_ifindex) {
  dev = __dev_get_by_index(net, ndm->ndm_ifindex);
  if (dev == ((void*)0)) {
   err = -ENODEV;
   goto out;
  }
 }

 tbl = neigh_find_table(ndm->ndm_family);
 if (tbl == ((void*)0))
  return -EAFNOSUPPORT;

 if (nla_len(dst_attr) < (int)tbl->key_len) {
  NL_SET_ERR_MSG(extack, "Invalid network address");
  goto out;
 }

 if (ndm->ndm_flags & NTF_PROXY) {
  err = pneigh_delete(tbl, net, nla_data(dst_attr), dev);
  goto out;
 }

 if (dev == ((void*)0))
  goto out;

 neigh = neigh_lookup(tbl, nla_data(dst_attr), dev);
 if (neigh == ((void*)0)) {
  err = -ENOENT;
  goto out;
 }

 err = __neigh_update(neigh, ((void*)0), NUD_FAILED,
        NEIGH_UPDATE_F_OVERRIDE | NEIGH_UPDATE_F_ADMIN,
        NETLINK_CB(skb).portid, extack);
 write_lock_bh(&tbl->lock);
 neigh_release(neigh);
 neigh_remove_one(neigh, tbl);
 write_unlock_bh(&tbl->lock);

out:
 return err;
}
