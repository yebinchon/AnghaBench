
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct fib_rules_ops {scalar_t__ (* fill ) (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ;int family; } ;
struct fib_rule_hdr {int table; scalar_t__ action; int flags; scalar_t__ res2; scalar_t__ res1; int family; } ;
struct fib_rule {int table; int suppress_prefixlen; scalar_t__ action; int iifindex; int oifindex; int pref; int mark; int mark_mask; int target; int suppress_ifgroup; scalar_t__ ip_proto; int dport_range; int sport_range; int uid_range; scalar_t__ l3mdev; scalar_t__ tun_id; scalar_t__* oifname; scalar_t__* iifname; int ctarget; scalar_t__ proto; int flags; } ;


 int EMSGSIZE ;
 int FIB_RULE_IIF_DETACHED ;
 int FIB_RULE_OIF_DETACHED ;
 int FIB_RULE_UNRESOLVED ;
 int FRA_DPORT_RANGE ;
 int FRA_FWMARK ;
 int FRA_FWMASK ;
 int FRA_GOTO ;
 int FRA_IIFNAME ;
 int FRA_IP_PROTO ;
 int FRA_L3MDEV ;
 int FRA_OIFNAME ;
 int FRA_PAD ;
 int FRA_PRIORITY ;
 int FRA_PROTOCOL ;
 int FRA_SPORT_RANGE ;
 int FRA_SUPPRESS_IFGROUP ;
 int FRA_SUPPRESS_PREFIXLEN ;
 int FRA_TABLE ;
 int FRA_TUN_ID ;
 scalar_t__ FR_ACT_GOTO ;
 scalar_t__ fib_rule_port_range_set (int *) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,scalar_t__,int ) ;
 scalar_t__ nla_put_port_range (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,scalar_t__*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_uid_range (struct sk_buff*,int *) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct fib_rule_hdr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int) ;
 int * rcu_access_pointer (int ) ;
 scalar_t__ stub1 (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ;
 scalar_t__ uid_range_set (int *) ;

__attribute__((used)) static int fib_nl_fill_rule(struct sk_buff *skb, struct fib_rule *rule,
       u32 pid, u32 seq, int type, int flags,
       struct fib_rules_ops *ops)
{
 struct nlmsghdr *nlh;
 struct fib_rule_hdr *frh;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*frh), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 frh = nlmsg_data(nlh);
 frh->family = ops->family;
 frh->table = rule->table;
 if (nla_put_u32(skb, FRA_TABLE, rule->table))
  goto nla_put_failure;
 if (nla_put_u32(skb, FRA_SUPPRESS_PREFIXLEN, rule->suppress_prefixlen))
  goto nla_put_failure;
 frh->res1 = 0;
 frh->res2 = 0;
 frh->action = rule->action;
 frh->flags = rule->flags;

 if (nla_put_u8(skb, FRA_PROTOCOL, rule->proto))
  goto nla_put_failure;

 if (rule->action == FR_ACT_GOTO &&
     rcu_access_pointer(rule->ctarget) == ((void*)0))
  frh->flags |= FIB_RULE_UNRESOLVED;

 if (rule->iifname[0]) {
  if (nla_put_string(skb, FRA_IIFNAME, rule->iifname))
   goto nla_put_failure;
  if (rule->iifindex == -1)
   frh->flags |= FIB_RULE_IIF_DETACHED;
 }

 if (rule->oifname[0]) {
  if (nla_put_string(skb, FRA_OIFNAME, rule->oifname))
   goto nla_put_failure;
  if (rule->oifindex == -1)
   frh->flags |= FIB_RULE_OIF_DETACHED;
 }

 if ((rule->pref &&
      nla_put_u32(skb, FRA_PRIORITY, rule->pref)) ||
     (rule->mark &&
      nla_put_u32(skb, FRA_FWMARK, rule->mark)) ||
     ((rule->mark_mask || rule->mark) &&
      nla_put_u32(skb, FRA_FWMASK, rule->mark_mask)) ||
     (rule->target &&
      nla_put_u32(skb, FRA_GOTO, rule->target)) ||
     (rule->tun_id &&
      nla_put_be64(skb, FRA_TUN_ID, rule->tun_id, FRA_PAD)) ||
     (rule->l3mdev &&
      nla_put_u8(skb, FRA_L3MDEV, rule->l3mdev)) ||
     (uid_range_set(&rule->uid_range) &&
      nla_put_uid_range(skb, &rule->uid_range)) ||
     (fib_rule_port_range_set(&rule->sport_range) &&
      nla_put_port_range(skb, FRA_SPORT_RANGE, &rule->sport_range)) ||
     (fib_rule_port_range_set(&rule->dport_range) &&
      nla_put_port_range(skb, FRA_DPORT_RANGE, &rule->dport_range)) ||
     (rule->ip_proto && nla_put_u8(skb, FRA_IP_PROTO, rule->ip_proto)))
  goto nla_put_failure;

 if (rule->suppress_ifgroup != -1) {
  if (nla_put_u32(skb, FRA_SUPPRESS_IFGROUP, rule->suppress_ifgroup))
   goto nla_put_failure;
 }

 if (ops->fill(rule, skb, frh) < 0)
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
