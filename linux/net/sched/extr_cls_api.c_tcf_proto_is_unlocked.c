
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto_ops {int flags; int owner; } ;


 scalar_t__ IS_ERR (struct tcf_proto_ops const*) ;
 int TCF_PROTO_OPS_DOIT_UNLOCKED ;
 int module_put (int ) ;
 scalar_t__ strlen (char const*) ;
 struct tcf_proto_ops* tcf_proto_lookup_ops (char const*,int,int *) ;

__attribute__((used)) static bool tcf_proto_is_unlocked(const char *kind)
{
 const struct tcf_proto_ops *ops;
 bool ret;

 if (strlen(kind) == 0)
  return 0;

 ops = tcf_proto_lookup_ops(kind, 0, ((void*)0));



 if (IS_ERR(ops))
  return 0;

 ret = !!(ops->flags & TCF_PROTO_OPS_DOIT_UNLOCKED);
 module_put(ops->owner);
 return ret;
}
