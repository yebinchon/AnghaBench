
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {scalar_t__ user_ns; } ;
struct fib_rules_ops {int addr_size; int rule_size; } ;
struct fib_rule_hdr {int src_len; int dst_len; scalar_t__ action; int flags; } ;
struct TYPE_4__ {int end; int start; } ;
struct fib_rule {int iifindex; int oifindex; int mark_mask; scalar_t__ action; int suppress_prefixlen; int suppress_ifgroup; int dport_range; int sport_range; void* ip_proto; TYPE_1__ uid_range; scalar_t__ table; scalar_t__ l3mdev; void* pref; void* target; int flags; int tun_id; void* mark; int oifname; int iifname; void* proto; struct net* fr_net; int refcnt; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 size_t FRA_DPORT_RANGE ;
 size_t FRA_DST ;
 size_t FRA_FWMARK ;
 size_t FRA_FWMASK ;
 size_t FRA_GOTO ;
 size_t FRA_IIFNAME ;
 size_t FRA_IP_PROTO ;
 size_t FRA_L3MDEV ;
 size_t FRA_OIFNAME ;
 size_t FRA_PRIORITY ;
 size_t FRA_PROTOCOL ;
 size_t FRA_SPORT_RANGE ;
 size_t FRA_SRC ;
 size_t FRA_SUPPRESS_IFGROUP ;
 size_t FRA_SUPPRESS_PREFIXLEN ;
 size_t FRA_TUN_ID ;
 size_t FRA_UID_RANGE ;
 scalar_t__ FR_ACT_GOTO ;
 int GFP_KERNEL ;
 int IFNAMSIZ ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 void* RTPROT_UNSPEC ;
 struct net_device* __dev_get_by_name (struct net*,int ) ;
 scalar_t__ current_user_ns () ;
 void* fib_default_rule_pref (struct fib_rules_ops*) ;
 TYPE_1__ fib_kuid_range_unset ;
 scalar_t__ fib_nl2rule_l3mdev (struct nlattr*,struct fib_rule*,struct netlink_ext_ack*) ;
 scalar_t__ frh_get_table (struct fib_rule_hdr*,struct nlattr**) ;
 int kfree (struct fib_rule*) ;
 struct fib_rule* kzalloc (int ,int ) ;
 int nla_get_be64 (struct nlattr*) ;
 TYPE_1__ nla_get_kuid_range (struct nlattr**) ;
 int nla_get_port_range (struct nlattr*,int *) ;
 void* nla_get_u32 (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 int nla_strlcpy (int ,struct nlattr*,int ) ;
 struct fib_rule_hdr* nlmsg_data (struct nlmsghdr*) ;
 int refcount_set (int *,int) ;
 struct net* sock_net (int ) ;
 int uid_lte (int ,int ) ;
 int uid_range_set (TYPE_1__*) ;

__attribute__((used)) static int fib_nl2rule(struct sk_buff *skb, struct nlmsghdr *nlh,
         struct netlink_ext_ack *extack,
         struct fib_rules_ops *ops,
         struct nlattr *tb[],
         struct fib_rule **rule,
         bool *user_priority)
{
 struct net *net = sock_net(skb->sk);
 struct fib_rule_hdr *frh = nlmsg_data(nlh);
 struct fib_rule *nlrule = ((void*)0);
 int err = -EINVAL;

 if (frh->src_len)
  if (!tb[FRA_SRC] ||
      frh->src_len > (ops->addr_size * 8) ||
      nla_len(tb[FRA_SRC]) != ops->addr_size) {
   NL_SET_ERR_MSG(extack, "Invalid source address");
   goto errout;
 }

 if (frh->dst_len)
  if (!tb[FRA_DST] ||
      frh->dst_len > (ops->addr_size * 8) ||
      nla_len(tb[FRA_DST]) != ops->addr_size) {
   NL_SET_ERR_MSG(extack, "Invalid dst address");
   goto errout;
 }

 nlrule = kzalloc(ops->rule_size, GFP_KERNEL);
 if (!nlrule) {
  err = -ENOMEM;
  goto errout;
 }
 refcount_set(&nlrule->refcnt, 1);
 nlrule->fr_net = net;

 if (tb[FRA_PRIORITY]) {
  nlrule->pref = nla_get_u32(tb[FRA_PRIORITY]);
  *user_priority = 1;
 } else {
  nlrule->pref = fib_default_rule_pref(ops);
 }

 nlrule->proto = tb[FRA_PROTOCOL] ?
  nla_get_u8(tb[FRA_PROTOCOL]) : RTPROT_UNSPEC;

 if (tb[FRA_IIFNAME]) {
  struct net_device *dev;

  nlrule->iifindex = -1;
  nla_strlcpy(nlrule->iifname, tb[FRA_IIFNAME], IFNAMSIZ);
  dev = __dev_get_by_name(net, nlrule->iifname);
  if (dev)
   nlrule->iifindex = dev->ifindex;
 }

 if (tb[FRA_OIFNAME]) {
  struct net_device *dev;

  nlrule->oifindex = -1;
  nla_strlcpy(nlrule->oifname, tb[FRA_OIFNAME], IFNAMSIZ);
  dev = __dev_get_by_name(net, nlrule->oifname);
  if (dev)
   nlrule->oifindex = dev->ifindex;
 }

 if (tb[FRA_FWMARK]) {
  nlrule->mark = nla_get_u32(tb[FRA_FWMARK]);
  if (nlrule->mark)



   nlrule->mark_mask = 0xFFFFFFFF;
 }

 if (tb[FRA_FWMASK])
  nlrule->mark_mask = nla_get_u32(tb[FRA_FWMASK]);

 if (tb[FRA_TUN_ID])
  nlrule->tun_id = nla_get_be64(tb[FRA_TUN_ID]);

 err = -EINVAL;
 if (tb[FRA_L3MDEV] &&
     fib_nl2rule_l3mdev(tb[FRA_L3MDEV], nlrule, extack) < 0)
  goto errout_free;

 nlrule->action = frh->action;
 nlrule->flags = frh->flags;
 nlrule->table = frh_get_table(frh, tb);
 if (tb[FRA_SUPPRESS_PREFIXLEN])
  nlrule->suppress_prefixlen = nla_get_u32(tb[FRA_SUPPRESS_PREFIXLEN]);
 else
  nlrule->suppress_prefixlen = -1;

 if (tb[FRA_SUPPRESS_IFGROUP])
  nlrule->suppress_ifgroup = nla_get_u32(tb[FRA_SUPPRESS_IFGROUP]);
 else
  nlrule->suppress_ifgroup = -1;

 if (tb[FRA_GOTO]) {
  if (nlrule->action != FR_ACT_GOTO) {
   NL_SET_ERR_MSG(extack, "Unexpected goto");
   goto errout_free;
  }

  nlrule->target = nla_get_u32(tb[FRA_GOTO]);

  if (nlrule->target <= nlrule->pref) {
   NL_SET_ERR_MSG(extack, "Backward goto not supported");
   goto errout_free;
  }
 } else if (nlrule->action == FR_ACT_GOTO) {
  NL_SET_ERR_MSG(extack, "Missing goto target for action goto");
  goto errout_free;
 }

 if (nlrule->l3mdev && nlrule->table) {
  NL_SET_ERR_MSG(extack, "l3mdev and table are mutually exclusive");
  goto errout_free;
 }

 if (tb[FRA_UID_RANGE]) {
  if (current_user_ns() != net->user_ns) {
   err = -EPERM;
   NL_SET_ERR_MSG(extack, "No permission to set uid");
   goto errout_free;
  }

  nlrule->uid_range = nla_get_kuid_range(tb);

  if (!uid_range_set(&nlrule->uid_range) ||
      !uid_lte(nlrule->uid_range.start, nlrule->uid_range.end)) {
   NL_SET_ERR_MSG(extack, "Invalid uid range");
   goto errout_free;
  }
 } else {
  nlrule->uid_range = fib_kuid_range_unset;
 }

 if (tb[FRA_IP_PROTO])
  nlrule->ip_proto = nla_get_u8(tb[FRA_IP_PROTO]);

 if (tb[FRA_SPORT_RANGE]) {
  err = nla_get_port_range(tb[FRA_SPORT_RANGE],
      &nlrule->sport_range);
  if (err) {
   NL_SET_ERR_MSG(extack, "Invalid sport range");
   goto errout_free;
  }
 }

 if (tb[FRA_DPORT_RANGE]) {
  err = nla_get_port_range(tb[FRA_DPORT_RANGE],
      &nlrule->dport_range);
  if (err) {
   NL_SET_ERR_MSG(extack, "Invalid dport range");
   goto errout_free;
  }
 }

 *rule = nlrule;

 return 0;

errout_free:
 kfree(nlrule);
errout:
 return err;
}
