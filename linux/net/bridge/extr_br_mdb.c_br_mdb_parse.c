
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct br_port_msg {scalar_t__ ifindex; } ;
struct br_mdb_entry {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int IFF_EBRIDGE ;
 size_t MDBA_SET_ENTRY ;
 int MDBA_SET_ENTRY_MAX ;
 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 int is_valid_mdb_entry (struct br_mdb_entry*) ;
 struct br_mdb_entry* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct br_port_msg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int *,int *) ;
 int pr_info (char*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
   struct net_device **pdev, struct br_mdb_entry **pentry)
{
 struct net *net = sock_net(skb->sk);
 struct br_mdb_entry *entry;
 struct br_port_msg *bpm;
 struct nlattr *tb[MDBA_SET_ENTRY_MAX+1];
 struct net_device *dev;
 int err;

 err = nlmsg_parse_deprecated(nlh, sizeof(*bpm), tb,
         MDBA_SET_ENTRY_MAX, ((void*)0), ((void*)0));
 if (err < 0)
  return err;

 bpm = nlmsg_data(nlh);
 if (bpm->ifindex == 0) {
  pr_info("PF_BRIDGE: br_mdb_parse() with invalid ifindex\n");
  return -EINVAL;
 }

 dev = __dev_get_by_index(net, bpm->ifindex);
 if (dev == ((void*)0)) {
  pr_info("PF_BRIDGE: br_mdb_parse() with unknown ifindex\n");
  return -ENODEV;
 }

 if (!(dev->priv_flags & IFF_EBRIDGE)) {
  pr_info("PF_BRIDGE: br_mdb_parse() with non-bridge\n");
  return -EOPNOTSUPP;
 }

 *pdev = dev;

 if (!tb[MDBA_SET_ENTRY] ||
     nla_len(tb[MDBA_SET_ENTRY]) != sizeof(struct br_mdb_entry)) {
  pr_info("PF_BRIDGE: br_mdb_parse() with invalid attr\n");
  return -EINVAL;
 }

 entry = nla_data(tb[MDBA_SET_ENTRY]);
 if (!is_valid_mdb_entry(entry)) {
  pr_info("PF_BRIDGE: br_mdb_parse() with invalid entry\n");
  return -EINVAL;
 }

 *pentry = entry;
 return 0;
}
