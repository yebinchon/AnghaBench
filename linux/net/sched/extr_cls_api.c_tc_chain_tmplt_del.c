
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto_ops {int owner; int (* tmplt_destroy ) (void*) ;} ;


 int module_put (int ) ;
 int stub1 (void*) ;

__attribute__((used)) static void tc_chain_tmplt_del(const struct tcf_proto_ops *tmplt_ops,
          void *tmplt_priv)
{

 if (!tmplt_ops)
  return;

 tmplt_ops->tmplt_destroy(tmplt_priv);
 module_put(tmplt_ops->owner);
}
