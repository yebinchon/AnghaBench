
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTM_NEWNEIGH ;
 int kfree_skb (struct sk_buff*) ;
 int neigh_fill_info (struct sk_buff*,struct neighbour*,int ,int ,int ,int ) ;
 int neigh_nlmsg_size () ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;

__attribute__((used)) static int neigh_get_reply(struct net *net, struct neighbour *neigh,
      u32 pid, u32 seq)
{
 struct sk_buff *skb;
 int err = 0;

 skb = nlmsg_new(neigh_nlmsg_size(), GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 err = neigh_fill_info(skb, neigh, pid, seq, RTM_NEWNEIGH, 0);
 if (err) {
  kfree_skb(skb);
  goto errout;
 }

 err = rtnl_unicast(skb, net, pid);
errout:
 return err;
}
