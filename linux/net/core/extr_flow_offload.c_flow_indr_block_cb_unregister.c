
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int flow_indr_block_bind_cb_t ;


 int __flow_indr_block_cb_unregister (struct net_device*,int *,void*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void flow_indr_block_cb_unregister(struct net_device *dev,
       flow_indr_block_bind_cb_t *cb,
       void *cb_ident)
{
 rtnl_lock();
 __flow_indr_block_cb_unregister(dev, cb, cb_ident);
 rtnl_unlock();
}
