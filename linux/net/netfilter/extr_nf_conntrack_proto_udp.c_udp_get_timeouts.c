
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {unsigned int* timeouts; } ;


 TYPE_1__* nf_udp_pernet (struct net*) ;

__attribute__((used)) static unsigned int *udp_get_timeouts(struct net *net)
{
 return nf_udp_pernet(net)->timeouts;
}
