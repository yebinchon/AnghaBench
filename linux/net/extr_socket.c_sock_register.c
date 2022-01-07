
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_proto_family {size_t family; } ;


 int EEXIST ;
 int ENOBUFS ;
 size_t NPROTO ;
 int lockdep_is_held (int *) ;
 int * net_families ;
 int net_family_lock ;
 int pr_crit (char*,size_t,size_t) ;
 int pr_info (char*,size_t) ;
 int rcu_assign_pointer (int ,struct net_proto_family const*) ;
 scalar_t__ rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int sock_register(const struct net_proto_family *ops)
{
 int err;

 if (ops->family >= NPROTO) {
  pr_crit("protocol %d >= NPROTO(%d)\n", ops->family, NPROTO);
  return -ENOBUFS;
 }

 spin_lock(&net_family_lock);
 if (rcu_dereference_protected(net_families[ops->family],
          lockdep_is_held(&net_family_lock)))
  err = -EEXIST;
 else {
  rcu_assign_pointer(net_families[ops->family], ops);
  err = 0;
 }
 spin_unlock(&net_family_lock);

 pr_info("NET: Registered protocol family %d\n", ops->family);
 return err;
}
