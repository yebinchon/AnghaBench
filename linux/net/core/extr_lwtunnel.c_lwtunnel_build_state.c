
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int dummy; } ;
struct lwtunnel_encap_ops {int (* build_state ) (struct nlattr*,unsigned int,void const*,struct lwtunnel_state**,struct netlink_ext_ack*) ;int owner; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t LWTUNNEL_ENCAP_MAX ;
 size_t LWTUNNEL_ENCAP_NONE ;
 int NL_SET_ERR_MSG_ATTR (struct netlink_ext_ack*,struct nlattr*,char*) ;
 scalar_t__ likely (int) ;
 int * lwtun_encaps ;
 int module_put (int ) ;
 struct lwtunnel_encap_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct nlattr*,unsigned int,void const*,struct lwtunnel_state**,struct netlink_ext_ack*) ;
 scalar_t__ try_module_get (int ) ;

int lwtunnel_build_state(u16 encap_type,
    struct nlattr *encap, unsigned int family,
    const void *cfg, struct lwtunnel_state **lws,
    struct netlink_ext_ack *extack)
{
 const struct lwtunnel_encap_ops *ops;
 bool found = 0;
 int ret = -EINVAL;

 if (encap_type == LWTUNNEL_ENCAP_NONE ||
     encap_type > LWTUNNEL_ENCAP_MAX) {
  NL_SET_ERR_MSG_ATTR(extack, encap,
        "Unknown LWT encapsulation type");
  return ret;
 }

 ret = -EOPNOTSUPP;
 rcu_read_lock();
 ops = rcu_dereference(lwtun_encaps[encap_type]);
 if (likely(ops && ops->build_state && try_module_get(ops->owner)))
  found = 1;
 rcu_read_unlock();

 if (found) {
  ret = ops->build_state(encap, family, cfg, lws, extack);
  if (ret)
   module_put(ops->owner);
 } else {



  NL_SET_ERR_MSG_ATTR(extack, encap,
        "LWT encapsulation type not supported");
 }

 return ret;
}
