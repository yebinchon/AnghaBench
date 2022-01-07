
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_6__ {int optimistic_dad; } ;
struct inet6_dev {TYPE_3__ cnf; } ;
struct TYPE_4__ {int optimistic_dad; } ;



__attribute__((used)) static bool ipv6_allow_optimistic_dad(struct net *net,
          struct inet6_dev *idev)
{
 return 0;

}
