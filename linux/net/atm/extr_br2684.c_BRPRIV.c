
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct br2684_dev {int dummy; } ;


 struct br2684_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static inline struct br2684_dev *BRPRIV(const struct net_device *net_dev)
{
 return netdev_priv(net_dev);
}
