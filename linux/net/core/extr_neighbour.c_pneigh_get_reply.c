
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct pneigh_entry {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTM_NEWNEIGH ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pneigh_fill_info (struct sk_buff*,struct pneigh_entry*,int ,int ,int ,int ,struct neigh_table*) ;
 int pneigh_nlmsg_size () ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;

__attribute__((used)) static int pneigh_get_reply(struct net *net, struct pneigh_entry *neigh,
       u32 pid, u32 seq, struct neigh_table *tbl)
{
 struct sk_buff *skb;
 int err = 0;

 skb = nlmsg_new(pneigh_nlmsg_size(), GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 err = pneigh_fill_info(skb, neigh, pid, seq, RTM_NEWNEIGH, 0, tbl);
 if (err) {
  kfree_skb(skb);
  goto errout;
 }

 err = rtnl_unicast(skb, net, pid);
errout:
 return err;
}
