
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_proto {int protocol; int prot; } ;


 int CAN_NPROTO ;
 int EBUSY ;
 int EINVAL ;
 int RCU_INIT_POINTER (int ,struct can_proto const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int proto_register (int ,int ) ;
 int * proto_tab ;
 int proto_tab_lock ;
 int proto_unregister (int ) ;
 scalar_t__ rcu_access_pointer (int ) ;

int can_proto_register(const struct can_proto *cp)
{
 int proto = cp->protocol;
 int err = 0;

 if (proto < 0 || proto >= CAN_NPROTO) {
  pr_err("can: protocol number %d out of range\n", proto);
  return -EINVAL;
 }

 err = proto_register(cp->prot, 0);
 if (err < 0)
  return err;

 mutex_lock(&proto_tab_lock);

 if (rcu_access_pointer(proto_tab[proto])) {
  pr_err("can: protocol %d already registered\n", proto);
  err = -EBUSY;
 } else {
  RCU_INIT_POINTER(proto_tab[proto], cp);
 }

 mutex_unlock(&proto_tab_lock);

 if (err < 0)
  proto_unregister(cp->prot);

 return err;
}
