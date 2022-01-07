
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {scalar_t__ maxtype; scalar_t__ slave_maxtype; } ;


 int EINVAL ;
 scalar_t__ RTNL_MAX_TYPE ;
 scalar_t__ RTNL_SLAVE_MAX_TYPE ;
 scalar_t__ WARN_ON (int) ;
 int __rtnl_link_register (struct rtnl_link_ops*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int rtnl_link_register(struct rtnl_link_ops *ops)
{
 int err;


 if (WARN_ON(ops->maxtype > RTNL_MAX_TYPE ||
      ops->slave_maxtype > RTNL_SLAVE_MAX_TYPE))
  return -EINVAL;

 rtnl_lock();
 err = __rtnl_link_register(ops);
 rtnl_unlock();
 return err;
}
