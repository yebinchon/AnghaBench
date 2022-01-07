
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int user_ns; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {struct net* net_ns; } ;


 int CAP_SYS_ADMIN ;
 TYPE_2__* current ;
 int ns_capable (int ,int ) ;

__attribute__((used)) static bool net_current_may_mount(void)
{
 struct net *net = current->nsproxy->net_ns;

 return ns_capable(net->user_ns, CAP_SYS_ADMIN);
}
