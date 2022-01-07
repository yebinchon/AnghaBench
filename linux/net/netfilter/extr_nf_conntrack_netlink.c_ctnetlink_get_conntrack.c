
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_type; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {void* data; int done; int dump; int start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 size_t CTA_TUPLE_ORIG ;
 size_t CTA_TUPLE_REPLY ;
 size_t CTA_ZONE ;
 int EAGAIN ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NFNL_MSG_TYPE (int ) ;
 int NLMSG_DEFAULT_SIZE ;
 int NLM_F_DUMP ;
 int ctnetlink_done ;
 int ctnetlink_dump_table ;
 int ctnetlink_fill_info (struct sk_buff*,int ,int ,int ,struct nf_conn*) ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int ,struct nf_conntrack_zone*) ;
 int ctnetlink_parse_zone (struct nlattr const* const,struct nf_conntrack_zone*) ;
 int ctnetlink_start ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_dump_start (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ctnetlink_get_conntrack(struct net *net, struct sock *ctnl,
       struct sk_buff *skb,
       const struct nlmsghdr *nlh,
       const struct nlattr * const cda[],
       struct netlink_ext_ack *extack)
{
 struct nf_conntrack_tuple_hash *h;
 struct nf_conntrack_tuple tuple;
 struct nf_conn *ct;
 struct sk_buff *skb2 = ((void*)0);
 struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u_int8_t u3 = nfmsg->nfgen_family;
 struct nf_conntrack_zone zone;
 int err;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .start = ctnetlink_start,
   .dump = ctnetlink_dump_table,
   .done = ctnetlink_done,
   .data = (void *)cda,
  };

  return netlink_dump_start(ctnl, skb, nlh, &c);
 }

 err = ctnetlink_parse_zone(cda[CTA_ZONE], &zone);
 if (err < 0)
  return err;

 if (cda[CTA_TUPLE_ORIG])
  err = ctnetlink_parse_tuple(cda, &tuple, CTA_TUPLE_ORIG,
         u3, &zone);
 else if (cda[CTA_TUPLE_REPLY])
  err = ctnetlink_parse_tuple(cda, &tuple, CTA_TUPLE_REPLY,
         u3, &zone);
 else
  return -EINVAL;

 if (err < 0)
  return err;

 h = nf_conntrack_find_get(net, &zone, &tuple);
 if (!h)
  return -ENOENT;

 ct = nf_ct_tuplehash_to_ctrack(h);

 err = -ENOMEM;
 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb2 == ((void*)0)) {
  nf_ct_put(ct);
  return -ENOMEM;
 }

 rcu_read_lock();
 err = ctnetlink_fill_info(skb2, NETLINK_CB(skb).portid, nlh->nlmsg_seq,
      NFNL_MSG_TYPE(nlh->nlmsg_type), ct);
 rcu_read_unlock();
 nf_ct_put(ct);
 if (err <= 0)
  goto free;

 err = netlink_unicast(ctnl, skb2, NETLINK_CB(skb).portid, MSG_DONTWAIT);
 if (err < 0)
  goto out;

 return 0;

free:
 kfree_skb(skb2);
out:

 return err == -EAGAIN ? -ENOBUFS : err;
}
