
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_encap_ops {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t LWTUNNEL_ENCAP_MAX ;
 size_t LWTUNNEL_ENCAP_NONE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int __rtnl_unlock () ;
 int * lwtun_encaps ;
 char* lwtunnel_encap_str (size_t) ;
 struct lwtunnel_encap_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,char const*) ;
 int rtnl_lock () ;

int lwtunnel_valid_encap_type(u16 encap_type, struct netlink_ext_ack *extack)
{
 const struct lwtunnel_encap_ops *ops;
 int ret = -EINVAL;

 if (encap_type == LWTUNNEL_ENCAP_NONE ||
     encap_type > LWTUNNEL_ENCAP_MAX) {
  NL_SET_ERR_MSG(extack, "Unknown lwt encapsulation type");
  return ret;
 }

 rcu_read_lock();
 ops = rcu_dereference(lwtun_encaps[encap_type]);
 rcu_read_unlock();
 ret = ops ? 0 : -EOPNOTSUPP;
 if (ret < 0)
  NL_SET_ERR_MSG(extack, "lwt encapsulation type not supported");

 return ret;
}
