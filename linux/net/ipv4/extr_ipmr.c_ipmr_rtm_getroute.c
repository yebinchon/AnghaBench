
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int maxvif; } ;
struct mfc_cache {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int portid; } ;


 int ENOBUFS ;
 int ENOENT ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 size_t RTA_DST ;
 int RTA_MAX ;
 size_t RTA_SRC ;
 size_t RTA_TABLE ;
 int RTM_NEWROUTE ;
 int RT_TABLE_DEFAULT ;
 struct mfc_cache* ipmr_cache_find (struct mr_table*,int ,int ) ;
 int ipmr_fill_mroute (struct mr_table*,struct sk_buff*,int ,int ,struct mfc_cache*,int ,int ) ;
 struct mr_table* ipmr_get_table (struct net*,int) ;
 int ipmr_rtm_valid_getroute_req (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ;
 int kfree_skb (struct sk_buff*) ;
 int mroute_msgsize (int,int ) ;
 int nla_get_in_addr (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ipmr_rtm_getroute(struct sk_buff *in_skb, struct nlmsghdr *nlh,
        struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(in_skb->sk);
 struct nlattr *tb[RTA_MAX + 1];
 struct sk_buff *skb = ((void*)0);
 struct mfc_cache *cache;
 struct mr_table *mrt;
 __be32 src, grp;
 u32 tableid;
 int err;

 err = ipmr_rtm_valid_getroute_req(in_skb, nlh, tb, extack);
 if (err < 0)
  goto errout;

 src = tb[RTA_SRC] ? nla_get_in_addr(tb[RTA_SRC]) : 0;
 grp = tb[RTA_DST] ? nla_get_in_addr(tb[RTA_DST]) : 0;
 tableid = tb[RTA_TABLE] ? nla_get_u32(tb[RTA_TABLE]) : 0;

 mrt = ipmr_get_table(net, tableid ? tableid : RT_TABLE_DEFAULT);
 if (!mrt) {
  err = -ENOENT;
  goto errout_free;
 }


 rcu_read_lock();
 cache = ipmr_cache_find(mrt, src, grp);
 rcu_read_unlock();
 if (!cache) {
  err = -ENOENT;
  goto errout_free;
 }

 skb = nlmsg_new(mroute_msgsize(0, mrt->maxvif), GFP_KERNEL);
 if (!skb) {
  err = -ENOBUFS;
  goto errout_free;
 }

 err = ipmr_fill_mroute(mrt, skb, NETLINK_CB(in_skb).portid,
          nlh->nlmsg_seq, cache,
          RTM_NEWROUTE, 0);
 if (err < 0)
  goto errout_free;

 err = rtnl_unicast(skb, net, NETLINK_CB(in_skb).portid);

errout:
 return err;

errout_free:
 kfree_skb(skb);
 goto errout;
}
