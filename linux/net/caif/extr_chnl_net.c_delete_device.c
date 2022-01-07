
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chnl_net {scalar_t__ netdev; } ;


 int ASSERT_RTNL () ;
 int unregister_netdevice (scalar_t__) ;

__attribute__((used)) static int delete_device(struct chnl_net *dev)
{
 ASSERT_RTNL();
 if (dev->netdev)
  unregister_netdevice(dev->netdev);
 return 0;
}
