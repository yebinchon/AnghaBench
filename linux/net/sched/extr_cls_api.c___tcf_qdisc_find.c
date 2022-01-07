
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {int tcf_block; } ;
struct Qdisc {TYPE_1__* ops; scalar_t__ handle; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int TCM_IFINDEX_MAGIC_BLOCK ;
 int TC_H_MAJ (scalar_t__) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 struct Qdisc* qdisc_lookup_rcu (struct net_device*,int ) ;
 int qdisc_put (struct Qdisc*) ;
 int qdisc_put_unlocked (struct Qdisc*) ;
 struct Qdisc* qdisc_refcount_inc_nz (struct Qdisc*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int __tcf_qdisc_find(struct net *net, struct Qdisc **q,
       u32 *parent, int ifindex, bool rtnl_held,
       struct netlink_ext_ack *extack)
{
 const struct Qdisc_class_ops *cops;
 struct net_device *dev;
 int err = 0;

 if (ifindex == TCM_IFINDEX_MAGIC_BLOCK)
  return 0;

 rcu_read_lock();


 dev = dev_get_by_index_rcu(net, ifindex);
 if (!dev) {
  rcu_read_unlock();
  return -ENODEV;
 }


 if (!*parent) {
  *q = dev->qdisc;
  *parent = (*q)->handle;
 } else {
  *q = qdisc_lookup_rcu(dev, TC_H_MAJ(*parent));
  if (!*q) {
   NL_SET_ERR_MSG(extack, "Parent Qdisc doesn't exists");
   err = -EINVAL;
   goto errout_rcu;
  }
 }

 *q = qdisc_refcount_inc_nz(*q);
 if (!*q) {
  NL_SET_ERR_MSG(extack, "Parent Qdisc doesn't exists");
  err = -EINVAL;
  goto errout_rcu;
 }


 cops = (*q)->ops->cl_ops;
 if (!cops) {
  NL_SET_ERR_MSG(extack, "Qdisc not classful");
  err = -EINVAL;
  goto errout_qdisc;
 }

 if (!cops->tcf_block) {
  NL_SET_ERR_MSG(extack, "Class doesn't support blocks");
  err = -EOPNOTSUPP;
  goto errout_qdisc;
 }

errout_rcu:





 rcu_read_unlock();
 return err;

errout_qdisc:
 rcu_read_unlock();

 if (rtnl_held)
  qdisc_put(*q);
 else
  qdisc_put_unlocked(*q);
 *q = ((void*)0);

 return err;
}
