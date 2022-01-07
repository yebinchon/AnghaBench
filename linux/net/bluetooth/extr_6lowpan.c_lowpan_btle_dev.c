
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct lowpan_btle_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 TYPE_1__* lowpan_dev (struct net_device const*) ;

__attribute__((used)) static inline struct lowpan_btle_dev *
lowpan_btle_dev(const struct net_device *netdev)
{
 return (struct lowpan_btle_dev *)lowpan_dev(netdev)->priv;
}
