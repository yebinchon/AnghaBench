
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_proto {int root; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct cls_cgroup_head {scalar_t__ handle; int exts; int rwork; int ematches; struct tcf_proto* tp; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int GFP_KERNEL ;
 int TCA_CGROUP_ACT ;
 size_t TCA_CGROUP_EMATCHES ;
 int TCA_CGROUP_MAX ;
 int TCA_CGROUP_POLICE ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 int cgroup_policy ;
 int cls_cgroup_destroy_work ;
 int kfree (struct cls_cgroup_head*) ;
 struct cls_cgroup_head* kzalloc (int,int ) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int rcu_assign_pointer (int ,struct cls_cgroup_head*) ;
 struct cls_cgroup_head* rtnl_dereference (int ) ;
 int tcf_em_tree_validate (struct tcf_proto*,struct nlattr*,int *) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_get_net (int *) ;
 int tcf_exts_init (int *,struct net*,int ,int ) ;
 int tcf_exts_validate (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int *,int,int,struct netlink_ext_ack*) ;
 int tcf_queue_work (int *,int ) ;

__attribute__((used)) static int cls_cgroup_change(struct net *net, struct sk_buff *in_skb,
        struct tcf_proto *tp, unsigned long base,
        u32 handle, struct nlattr **tca,
        void **arg, bool ovr, bool rtnl_held,
        struct netlink_ext_ack *extack)
{
 struct nlattr *tb[TCA_CGROUP_MAX + 1];
 struct cls_cgroup_head *head = rtnl_dereference(tp->root);
 struct cls_cgroup_head *new;
 int err;

 if (!tca[TCA_OPTIONS])
  return -EINVAL;

 if (!head && !handle)
  return -EINVAL;

 if (head && handle != head->handle)
  return -ENOENT;

 new = kzalloc(sizeof(*head), GFP_KERNEL);
 if (!new)
  return -ENOBUFS;

 err = tcf_exts_init(&new->exts, net, TCA_CGROUP_ACT, TCA_CGROUP_POLICE);
 if (err < 0)
  goto errout;
 new->handle = handle;
 new->tp = tp;
 err = nla_parse_nested_deprecated(tb, TCA_CGROUP_MAX,
       tca[TCA_OPTIONS], cgroup_policy,
       ((void*)0));
 if (err < 0)
  goto errout;

 err = tcf_exts_validate(net, tp, tb, tca[TCA_RATE], &new->exts, ovr,
    1, extack);
 if (err < 0)
  goto errout;

 err = tcf_em_tree_validate(tp, tb[TCA_CGROUP_EMATCHES], &new->ematches);
 if (err < 0)
  goto errout;

 rcu_assign_pointer(tp->root, new);
 if (head) {
  tcf_exts_get_net(&head->exts);
  tcf_queue_work(&head->rwork, cls_cgroup_destroy_work);
 }
 return 0;
errout:
 tcf_exts_destroy(&new->exts);
 kfree(new);
 return err;
}
