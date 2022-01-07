
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib_num_tclassid_users; } ;
struct net {TYPE_1__ ipv4; } ;
struct fib_nh {int nh_common; scalar_t__ nh_tclassid; } ;


 int fib_nh_common_release (int *) ;

void fib_nh_release(struct net *net, struct fib_nh *fib_nh)
{




 fib_nh_common_release(&fib_nh->nh_common);
}
