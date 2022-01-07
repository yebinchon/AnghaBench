
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int flow_indr_block_bind_cb_t ;


 int __flow_indr_block_cb_register (struct net_device*,void*,int *,void*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int flow_indr_block_cb_register(struct net_device *dev, void *cb_priv,
    flow_indr_block_bind_cb_t *cb,
    void *cb_ident)
{
 int err;

 rtnl_lock();
 err = __flow_indr_block_cb_register(dev, cb_priv, cb, cb_ident);
 rtnl_unlock();

 return err;
}
