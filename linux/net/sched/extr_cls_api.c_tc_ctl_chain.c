
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcmsg {int tcm_block_index; int tcm_ifindex; int tcm_parent; } ;
struct tcf_chain {int explicitly_created; } ;
struct tcf_block {int lock; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int user_ns; } ;
struct Qdisc {int dummy; } ;


 int CAP_NET_ADMIN ;
 int EAGAIN ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct tcf_block*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct tcf_block*) ;

 int RTM_DELTFILTER ;


 size_t TCA_CHAIN ;
 int TCA_MAX ;
 int TC_ACT_EXT_VAL_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_ns_capable (struct sk_buff*,int ,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 struct tcmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int rtm_tca_policy ;
 struct net* sock_net (int ) ;
 int tc_chain_notify (struct tcf_chain*,struct sk_buff*,int,int,int const,int) ;
 int tc_chain_tmplt_add (struct tcf_chain*,struct net*,struct nlattr**,struct netlink_ext_ack*) ;
 struct tcf_block* tcf_block_find (struct net*,struct Qdisc**,int *,unsigned long*,int ,int ,struct netlink_ext_ack*) ;
 int tcf_block_release (struct Qdisc*,struct tcf_block*,int) ;
 struct tcf_chain* tcf_chain_create (struct tcf_block*,int ) ;
 int tcf_chain_flush (struct tcf_chain*,int) ;
 scalar_t__ tcf_chain_held_by_acts_only (struct tcf_chain*) ;
 int tcf_chain_hold (struct tcf_chain*) ;
 struct tcf_chain* tcf_chain_lookup (struct tcf_block*,int ) ;
 int tcf_chain_put (struct tcf_chain*) ;
 int tcf_chain_put_explicitly_created (struct tcf_chain*) ;
 int tfilter_notify_chain (struct net*,struct sk_buff*,struct tcf_block*,struct Qdisc*,int ,struct nlmsghdr*,struct tcf_chain*,int ,int) ;

__attribute__((used)) static int tc_ctl_chain(struct sk_buff *skb, struct nlmsghdr *n,
   struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tca[TCA_MAX + 1];
 struct tcmsg *t;
 u32 parent;
 u32 chain_index;
 struct Qdisc *q = ((void*)0);
 struct tcf_chain *chain = ((void*)0);
 struct tcf_block *block;
 unsigned long cl;
 int err;

 if (n->nlmsg_type != 129 &&
     !netlink_ns_capable(skb, net->user_ns, CAP_NET_ADMIN))
  return -EPERM;

replay:
 err = nlmsg_parse_deprecated(n, sizeof(*t), tca, TCA_MAX,
         rtm_tca_policy, extack);
 if (err < 0)
  return err;

 t = nlmsg_data(n);
 parent = t->tcm_parent;
 cl = 0;

 block = tcf_block_find(net, &q, &parent, &cl,
          t->tcm_ifindex, t->tcm_block_index, extack);
 if (IS_ERR(block))
  return PTR_ERR(block);

 chain_index = tca[TCA_CHAIN] ? nla_get_u32(tca[TCA_CHAIN]) : 0;
 if (chain_index > TC_ACT_EXT_VAL_MASK) {
  NL_SET_ERR_MSG(extack, "Specified chain index exceeds upper limit");
  err = -EINVAL;
  goto errout_block;
 }

 mutex_lock(&block->lock);
 chain = tcf_chain_lookup(block, chain_index);
 if (n->nlmsg_type == 128) {
  if (chain) {
   if (tcf_chain_held_by_acts_only(chain)) {



    tcf_chain_hold(chain);
   } else {
    NL_SET_ERR_MSG(extack, "Filter chain already exists");
    err = -EEXIST;
    goto errout_block_locked;
   }
  } else {
   if (!(n->nlmsg_flags & NLM_F_CREATE)) {
    NL_SET_ERR_MSG(extack, "Need both RTM_NEWCHAIN and NLM_F_CREATE to create a new chain");
    err = -ENOENT;
    goto errout_block_locked;
   }
   chain = tcf_chain_create(block, chain_index);
   if (!chain) {
    NL_SET_ERR_MSG(extack, "Failed to create filter chain");
    err = -ENOMEM;
    goto errout_block_locked;
   }
  }
 } else {
  if (!chain || tcf_chain_held_by_acts_only(chain)) {
   NL_SET_ERR_MSG(extack, "Cannot find specified filter chain");
   err = -EINVAL;
   goto errout_block_locked;
  }
  tcf_chain_hold(chain);
 }

 if (n->nlmsg_type == 128) {





  tcf_chain_hold(chain);
  chain->explicitly_created = 1;
 }
 mutex_unlock(&block->lock);

 switch (n->nlmsg_type) {
 case 128:
  err = tc_chain_tmplt_add(chain, net, tca, extack);
  if (err) {
   tcf_chain_put_explicitly_created(chain);
   goto errout;
  }

  tc_chain_notify(chain, ((void*)0), 0, NLM_F_CREATE | NLM_F_EXCL,
    128, 0);
  break;
 case 130:
  tfilter_notify_chain(net, skb, block, q, parent, n,
         chain, RTM_DELTFILTER, 1);

  tcf_chain_flush(chain, 1);



  tcf_chain_put_explicitly_created(chain);
  break;
 case 129:
  err = tc_chain_notify(chain, skb, n->nlmsg_seq,
          n->nlmsg_seq, n->nlmsg_type, 1);
  if (err < 0)
   NL_SET_ERR_MSG(extack, "Failed to send chain notify message");
  break;
 default:
  err = -EOPNOTSUPP;
  NL_SET_ERR_MSG(extack, "Unsupported message type");
  goto errout;
 }

errout:
 tcf_chain_put(chain);
errout_block:
 tcf_block_release(q, block, 1);
 if (err == -EAGAIN)

  goto replay;
 return err;

errout_block_locked:
 mutex_unlock(&block->lock);
 goto errout_block;
}
