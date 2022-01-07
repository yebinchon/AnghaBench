
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_put (struct net_device*) ;

__attribute__((used)) static void tcf_mirred_dev_put(void *priv)
{
 struct net_device *dev = priv;

 dev_put(dev);
}
