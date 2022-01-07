
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* devconf_dflt; } ;
struct net {TYPE_5__ ipv6; } ;
struct TYPE_6__ {int initialized; } ;
struct TYPE_7__ {TYPE_1__ stable_secret; } ;
struct inet6_dev {TYPE_2__ cnf; } ;
struct TYPE_8__ {int initialized; } ;
struct TYPE_9__ {TYPE_3__ stable_secret; } ;


 int EINVAL ;
 int IN6_ADDR_GEN_MODE_STABLE_PRIVACY ;

__attribute__((used)) static int check_stable_privacy(struct inet6_dev *idev, struct net *net,
    int mode)
{
 if (mode == IN6_ADDR_GEN_MODE_STABLE_PRIVACY &&
     !idev->cnf.stable_secret.initialized &&
     !net->ipv6.devconf_dflt->stable_secret.initialized)
  return -EINVAL;
 return 1;
}
