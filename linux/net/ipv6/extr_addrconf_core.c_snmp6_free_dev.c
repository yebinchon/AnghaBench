
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipv6; int icmpv6dev; int icmpv6msgdev; } ;
struct inet6_dev {TYPE_1__ stats; } ;


 int free_percpu (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void snmp6_free_dev(struct inet6_dev *idev)
{
 kfree(idev->stats.icmpv6msgdev);
 kfree(idev->stats.icmpv6dev);
 free_percpu(idev->stats.ipv6);
}
