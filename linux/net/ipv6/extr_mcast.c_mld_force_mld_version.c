
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int force_mld_version; } ;
struct inet6_dev {TYPE_3__ cnf; int dev; } ;
struct TYPE_6__ {TYPE_1__* devconf_all; } ;
struct TYPE_8__ {TYPE_2__ ipv6; } ;
struct TYPE_5__ {scalar_t__ force_mld_version; } ;


 TYPE_4__* dev_net (int ) ;

__attribute__((used)) static int mld_force_mld_version(const struct inet6_dev *idev)
{





 if (dev_net(idev->dev)->ipv6.devconf_all->force_mld_version != 0)
  return dev_net(idev->dev)->ipv6.devconf_all->force_mld_version;
 else
  return idev->cnf.force_mld_version;
}
