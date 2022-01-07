
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int (* get_encap_size ) (struct lwtunnel_state*) ;} ;


 size_t LWTUNNEL_ENCAP_MAX ;
 size_t LWTUNNEL_ENCAP_NONE ;
 scalar_t__ likely (int) ;
 int * lwtun_encaps ;
 int nla_total_size (int ) ;
 struct lwtunnel_encap_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct lwtunnel_state*) ;

int lwtunnel_get_encap_size(struct lwtunnel_state *lwtstate)
{
 const struct lwtunnel_encap_ops *ops;
 int ret = 0;

 if (!lwtstate)
  return 0;

 if (lwtstate->type == LWTUNNEL_ENCAP_NONE ||
     lwtstate->type > LWTUNNEL_ENCAP_MAX)
  return 0;

 rcu_read_lock();
 ops = rcu_dereference(lwtun_encaps[lwtstate->type]);
 if (likely(ops && ops->get_encap_size))
  ret = nla_total_size(ops->get_encap_size(lwtstate));
 rcu_read_unlock();

 return ret;
}
