
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int (* input ) (struct sk_buff*) ;} ;
struct dst_entry {struct lwtunnel_state* lwtstate; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t LWTUNNEL_ENCAP_MAX ;
 size_t LWTUNNEL_ENCAP_NONE ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int * lwtun_encaps ;
 struct lwtunnel_encap_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

int lwtunnel_input(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 const struct lwtunnel_encap_ops *ops;
 struct lwtunnel_state *lwtstate;
 int ret = -EINVAL;

 if (!dst)
  goto drop;
 lwtstate = dst->lwtstate;

 if (lwtstate->type == LWTUNNEL_ENCAP_NONE ||
     lwtstate->type > LWTUNNEL_ENCAP_MAX)
  return 0;

 ret = -EOPNOTSUPP;
 rcu_read_lock();
 ops = rcu_dereference(lwtun_encaps[lwtstate->type]);
 if (likely(ops && ops->input))
  ret = ops->input(skb);
 rcu_read_unlock();

 if (ret == -EOPNOTSUPP)
  goto drop;

 return ret;

drop:
 kfree_skb(skb);

 return ret;
}
