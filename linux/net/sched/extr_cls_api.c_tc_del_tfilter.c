
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; scalar_t__ tcm_handle; int tcm_block_index; int tcm_ifindex; int tcm_info; } ;
struct tcf_proto {TYPE_3__* ops; } ;
struct tcf_chain_info {int dummy; } ;
struct tcf_chain {int filter_chain_lock; } ;
struct tcf_block {TYPE_3__* ops; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int user_ns; } ;
struct Qdisc {TYPE_2__* ops; } ;
struct TYPE_6__ {void* (* get ) (struct tcf_proto*,scalar_t__) ;int kind; } ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {int flags; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int IFNAMSIZ ;
 scalar_t__ IS_ERR (struct tcf_proto*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct tcf_proto*) ;
 int QDISC_CLASS_OPS_DOIT_UNLOCKED ;
 int RTM_DELTFILTER ;
 size_t TCA_CHAIN ;
 size_t TCA_KIND ;
 int TCA_MAX ;
 scalar_t__ TC_ACT_EXT_VAL_MASK ;
 scalar_t__ TC_H_MAJ (int ) ;
 scalar_t__ TC_H_MIN (int ) ;
 struct tcf_proto* __tcf_block_find (struct net*,struct Qdisc*,unsigned long,int ,int ,struct netlink_ext_ack*) ;
 int __tcf_qdisc_cl_find (struct Qdisc*,scalar_t__,unsigned long*,int ,struct netlink_ext_ack*) ;
 int __tcf_qdisc_find (struct net*,struct Qdisc**,scalar_t__*,int ,int,struct netlink_ext_ack*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_ns_capable (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct tcmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int rtm_tca_policy ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net* sock_net (int ) ;
 void* stub1 (struct tcf_proto*,scalar_t__) ;
 int tcf_block_release (struct Qdisc*,struct tcf_proto*,int) ;
 int tcf_chain_flush (struct tcf_chain*,int) ;
 struct tcf_chain* tcf_chain_get (struct tcf_proto*,scalar_t__,int) ;
 int tcf_chain_put (struct tcf_chain*) ;
 int tcf_chain_tp_delete_empty (struct tcf_chain*,struct tcf_proto*,int,struct netlink_ext_ack*) ;
 struct tcf_proto* tcf_chain_tp_find (struct tcf_chain*,struct tcf_chain_info*,scalar_t__,scalar_t__,int) ;
 int tcf_chain_tp_remove (struct tcf_chain*,struct tcf_chain_info*,struct tcf_proto*) ;
 scalar_t__ tcf_proto_check_kind (struct nlattr*,char*) ;
 int tcf_proto_is_unlocked (char*) ;
 int tcf_proto_put (struct tcf_proto*,int,int *) ;
 int tcf_proto_signal_destroying (struct tcf_chain*,struct tcf_proto*) ;
 int tfilter_del_notify (struct net*,struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,struct tcf_proto*,struct Qdisc*,scalar_t__,void*,int,int*,int,struct netlink_ext_ack*) ;
 int tfilter_notify (struct net*,struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,struct tcf_proto*,struct Qdisc*,scalar_t__,void*,int ,int,int) ;
 int tfilter_notify_chain (struct net*,struct sk_buff*,struct tcf_proto*,struct Qdisc*,scalar_t__,struct nlmsghdr*,struct tcf_chain*,int ,int) ;

__attribute__((used)) static int tc_del_tfilter(struct sk_buff *skb, struct nlmsghdr *n,
     struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tca[TCA_MAX + 1];
 char name[IFNAMSIZ];
 struct tcmsg *t;
 u32 protocol;
 u32 prio;
 u32 parent;
 u32 chain_index;
 struct Qdisc *q = ((void*)0);
 struct tcf_chain_info chain_info;
 struct tcf_chain *chain = ((void*)0);
 struct tcf_block *block = ((void*)0);
 struct tcf_proto *tp = ((void*)0);
 unsigned long cl = 0;
 void *fh = ((void*)0);
 int err;
 bool rtnl_held = 0;

 if (!netlink_ns_capable(skb, net->user_ns, CAP_NET_ADMIN))
  return -EPERM;

 err = nlmsg_parse_deprecated(n, sizeof(*t), tca, TCA_MAX,
         rtm_tca_policy, extack);
 if (err < 0)
  return err;

 t = nlmsg_data(n);
 protocol = TC_H_MIN(t->tcm_info);
 prio = TC_H_MAJ(t->tcm_info);
 parent = t->tcm_parent;

 if (prio == 0 && (protocol || t->tcm_handle || tca[TCA_KIND])) {
  NL_SET_ERR_MSG(extack, "Cannot flush filters with protocol, handle or kind set");
  return -ENOENT;
 }



 err = __tcf_qdisc_find(net, &q, &parent, t->tcm_ifindex, 0, extack);
 if (err)
  return err;

 if (tcf_proto_check_kind(tca[TCA_KIND], name)) {
  NL_SET_ERR_MSG(extack, "Specified TC filter name too long");
  err = -EINVAL;
  goto errout;
 }




 if (!prio ||
     (q && !(q->ops->cl_ops->flags & QDISC_CLASS_OPS_DOIT_UNLOCKED)) ||
     !tcf_proto_is_unlocked(name)) {
  rtnl_held = 1;
  rtnl_lock();
 }

 err = __tcf_qdisc_cl_find(q, parent, &cl, t->tcm_ifindex, extack);
 if (err)
  goto errout;

 block = __tcf_block_find(net, q, cl, t->tcm_ifindex, t->tcm_block_index,
     extack);
 if (IS_ERR(block)) {
  err = PTR_ERR(block);
  goto errout;
 }

 chain_index = tca[TCA_CHAIN] ? nla_get_u32(tca[TCA_CHAIN]) : 0;
 if (chain_index > TC_ACT_EXT_VAL_MASK) {
  NL_SET_ERR_MSG(extack, "Specified chain index exceeds upper limit");
  err = -EINVAL;
  goto errout;
 }
 chain = tcf_chain_get(block, chain_index, 0);
 if (!chain) {



  if (prio == 0) {
   err = 0;
   goto errout;
  }
  NL_SET_ERR_MSG(extack, "Cannot find specified filter chain");
  err = -ENOENT;
  goto errout;
 }

 if (prio == 0) {
  tfilter_notify_chain(net, skb, block, q, parent, n,
         chain, RTM_DELTFILTER, rtnl_held);
  tcf_chain_flush(chain, rtnl_held);
  err = 0;
  goto errout;
 }

 mutex_lock(&chain->filter_chain_lock);
 tp = tcf_chain_tp_find(chain, &chain_info, protocol,
          prio, 0);
 if (!tp || IS_ERR(tp)) {
  NL_SET_ERR_MSG(extack, "Filter with specified priority/protocol not found");
  err = tp ? PTR_ERR(tp) : -ENOENT;
  goto errout_locked;
 } else if (tca[TCA_KIND] && nla_strcmp(tca[TCA_KIND], tp->ops->kind)) {
  NL_SET_ERR_MSG(extack, "Specified filter kind does not match existing one");
  err = -EINVAL;
  goto errout_locked;
 } else if (t->tcm_handle == 0) {
  tcf_proto_signal_destroying(chain, tp);
  tcf_chain_tp_remove(chain, &chain_info, tp);
  mutex_unlock(&chain->filter_chain_lock);

  tcf_proto_put(tp, rtnl_held, ((void*)0));
  tfilter_notify(net, skb, n, tp, block, q, parent, fh,
          RTM_DELTFILTER, 0, rtnl_held);
  err = 0;
  goto errout;
 }
 mutex_unlock(&chain->filter_chain_lock);

 fh = tp->ops->get(tp, t->tcm_handle);

 if (!fh) {
  NL_SET_ERR_MSG(extack, "Specified filter handle not found");
  err = -ENOENT;
 } else {
  bool last;

  err = tfilter_del_notify(net, skb, n, tp, block,
      q, parent, fh, 0, &last,
      rtnl_held, extack);

  if (err)
   goto errout;
  if (last)
   tcf_chain_tp_delete_empty(chain, tp, rtnl_held, extack);
 }

errout:
 if (chain) {
  if (tp && !IS_ERR(tp))
   tcf_proto_put(tp, rtnl_held, ((void*)0));
  tcf_chain_put(chain);
 }
 tcf_block_release(q, block, rtnl_held);

 if (rtnl_held)
  rtnl_unlock();

 return err;

errout_locked:
 mutex_unlock(&chain->filter_chain_lock);
 goto errout;
}
