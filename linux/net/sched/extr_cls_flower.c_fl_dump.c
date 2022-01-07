
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int lock; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct fl_flow_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ classid; } ;
struct cls_fl_filter {int exts; scalar_t__ in_hw_count; scalar_t__ flags; TYPE_2__* mask; struct fl_flow_key key; TYPE_1__ res; int handle; } ;
struct TYPE_4__ {struct fl_flow_key key; } ;


 int TCA_FLOWER_CLASSID ;
 int TCA_FLOWER_FLAGS ;
 int TCA_FLOWER_IN_HW_COUNT ;
 int TCA_OPTIONS ;
 scalar_t__ fl_dump_key (struct sk_buff*,struct net*,struct fl_flow_key*,struct fl_flow_key*) ;
 int fl_hw_update_stats (struct tcf_proto*,struct cls_fl_filter*,int) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tc_skip_hw (scalar_t__) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *) ;

__attribute__((used)) static int fl_dump(struct net *net, struct tcf_proto *tp, void *fh,
     struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
 struct cls_fl_filter *f = fh;
 struct nlattr *nest;
 struct fl_flow_key *key, *mask;
 bool skip_hw;

 if (!f)
  return skb->len;

 t->tcm_handle = f->handle;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (!nest)
  goto nla_put_failure;

 spin_lock(&tp->lock);

 if (f->res.classid &&
     nla_put_u32(skb, TCA_FLOWER_CLASSID, f->res.classid))
  goto nla_put_failure_locked;

 key = &f->key;
 mask = &f->mask->key;
 skip_hw = tc_skip_hw(f->flags);

 if (fl_dump_key(skb, net, key, mask))
  goto nla_put_failure_locked;

 if (f->flags && nla_put_u32(skb, TCA_FLOWER_FLAGS, f->flags))
  goto nla_put_failure_locked;

 spin_unlock(&tp->lock);

 if (!skip_hw)
  fl_hw_update_stats(tp, f, rtnl_held);

 if (nla_put_u32(skb, TCA_FLOWER_IN_HW_COUNT, f->in_hw_count))
  goto nla_put_failure;

 if (tcf_exts_dump(skb, &f->exts))
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 if (tcf_exts_dump_stats(skb, &f->exts) < 0)
  goto nla_put_failure;

 return skb->len;

nla_put_failure_locked:
 spin_unlock(&tp->lock);
nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
