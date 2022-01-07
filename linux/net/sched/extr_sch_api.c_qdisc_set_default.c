
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_ops {int owner; } ;


 int CAP_NET_ADMIN ;
 int ENOENT ;
 int EPERM ;
 int capable (int ) ;
 struct Qdisc_ops const* default_qdisc_ops ;
 int module_put (int ) ;
 struct Qdisc_ops* qdisc_lookup_default (char const*) ;
 int qdisc_mod_lock ;
 int request_module (char*,char const*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int qdisc_set_default(const char *name)
{
 const struct Qdisc_ops *ops;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 write_lock(&qdisc_mod_lock);
 ops = qdisc_lookup_default(name);
 if (!ops) {

  write_unlock(&qdisc_mod_lock);
  request_module("sch_%s", name);
  write_lock(&qdisc_mod_lock);

  ops = qdisc_lookup_default(name);
 }

 if (ops) {

  module_put(default_qdisc_ops->owner);
  default_qdisc_ops = ops;
 }
 write_unlock(&qdisc_mod_lock);

 return ops ? 0 : -ENOENT;
}
