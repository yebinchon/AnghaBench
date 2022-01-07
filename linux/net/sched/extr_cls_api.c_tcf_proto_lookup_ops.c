
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto_ops {int owner; } ;
struct netlink_ext_ack {int dummy; } ;


 int EAGAIN ;
 int ENOENT ;
 struct tcf_proto_ops const* ERR_PTR (int ) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 struct tcf_proto_ops* __tcf_proto_lookup_ops (char const*) ;
 int module_put (int ) ;
 int request_module (char*,char const*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static const struct tcf_proto_ops *
tcf_proto_lookup_ops(const char *kind, bool rtnl_held,
       struct netlink_ext_ack *extack)
{
 const struct tcf_proto_ops *ops;

 ops = __tcf_proto_lookup_ops(kind);
 if (ops)
  return ops;
 NL_SET_ERR_MSG(extack, "TC classifier not found");
 return ERR_PTR(-ENOENT);
}
