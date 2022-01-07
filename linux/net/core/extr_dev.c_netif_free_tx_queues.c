
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int _tx; } ;


 int kvfree (int ) ;

__attribute__((used)) static void netif_free_tx_queues(struct net_device *dev)
{
 kvfree(dev->_tx);
}
