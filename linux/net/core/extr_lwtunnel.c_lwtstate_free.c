
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int owner; int (* destroy_state ) (struct lwtunnel_state*) ;} ;


 int kfree (struct lwtunnel_state*) ;
 int kfree_rcu (struct lwtunnel_state*,int ) ;
 struct lwtunnel_encap_ops** lwtun_encaps ;
 int module_put (int ) ;
 int rcu ;
 int stub1 (struct lwtunnel_state*) ;

void lwtstate_free(struct lwtunnel_state *lws)
{
 const struct lwtunnel_encap_ops *ops = lwtun_encaps[lws->type];

 if (ops->destroy_state) {
  ops->destroy_state(lws);
  kfree_rcu(lws, rcu);
 } else {
  kfree(lws);
 }
 module_put(ops->owner);
}
