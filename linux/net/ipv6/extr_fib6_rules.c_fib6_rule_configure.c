
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_6__ {int fib6_has_custom_rules; int fib6_rules_require_fldissect; } ;
struct net {TYPE_3__ ipv6; } ;
struct fib_rule_hdr {int tos; scalar_t__ dst_len; scalar_t__ src_len; } ;
struct fib_rule {scalar_t__ action; int table; int l3mdev; } ;
struct TYPE_5__ {scalar_t__ plen; void* addr; } ;
struct TYPE_4__ {scalar_t__ plen; void* addr; } ;
struct fib6_rule {int tclass; TYPE_2__ dst; TYPE_1__ src; } ;


 int EINVAL ;
 int ENOBUFS ;
 size_t FRA_DST ;
 size_t FRA_SRC ;
 scalar_t__ FR_ACT_TO_TBL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int RT6_TABLE_UNSPEC ;
 int * fib6_new_table (struct net*,int ) ;
 scalar_t__ fib_rule_requires_fldissect (struct fib_rule*) ;
 void* nla_get_in6_addr (struct nlattr*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int fib6_rule_configure(struct fib_rule *rule, struct sk_buff *skb,
          struct fib_rule_hdr *frh,
          struct nlattr **tb,
          struct netlink_ext_ack *extack)
{
 int err = -EINVAL;
 struct net *net = sock_net(skb->sk);
 struct fib6_rule *rule6 = (struct fib6_rule *) rule;

 if (rule->action == FR_ACT_TO_TBL && !rule->l3mdev) {
  if (rule->table == RT6_TABLE_UNSPEC) {
   NL_SET_ERR_MSG(extack, "Invalid table");
   goto errout;
  }

  if (fib6_new_table(net, rule->table) == ((void*)0)) {
   err = -ENOBUFS;
   goto errout;
  }
 }

 if (frh->src_len)
  rule6->src.addr = nla_get_in6_addr(tb[FRA_SRC]);

 if (frh->dst_len)
  rule6->dst.addr = nla_get_in6_addr(tb[FRA_DST]);

 rule6->src.plen = frh->src_len;
 rule6->dst.plen = frh->dst_len;
 rule6->tclass = frh->tos;

 if (fib_rule_requires_fldissect(rule))
  net->ipv6.fib6_rules_require_fldissect++;

 net->ipv6.fib6_has_custom_rules = 1;
 err = 0;
errout:
 return err;
}
