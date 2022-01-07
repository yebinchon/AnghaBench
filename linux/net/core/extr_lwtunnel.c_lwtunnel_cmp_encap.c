
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int (* cmp_encap ) (struct lwtunnel_state*,struct lwtunnel_state*) ;} ;


 size_t LWTUNNEL_ENCAP_MAX ;
 size_t LWTUNNEL_ENCAP_NONE ;
 scalar_t__ likely (int ) ;
 int * lwtun_encaps ;
 struct lwtunnel_encap_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct lwtunnel_state*,struct lwtunnel_state*) ;

int lwtunnel_cmp_encap(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
 const struct lwtunnel_encap_ops *ops;
 int ret = 0;

 if (!a && !b)
  return 0;

 if (!a || !b)
  return 1;

 if (a->type != b->type)
  return 1;

 if (a->type == LWTUNNEL_ENCAP_NONE ||
     a->type > LWTUNNEL_ENCAP_MAX)
  return 0;

 rcu_read_lock();
 ops = rcu_dereference(lwtun_encaps[a->type]);
 if (likely(ops && ops->cmp_encap))
  ret = ops->cmp_encap(a, b);
 rcu_read_unlock();

 return ret;
}
