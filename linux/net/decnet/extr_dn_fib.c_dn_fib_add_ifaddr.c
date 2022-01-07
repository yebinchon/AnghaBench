
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_ifaddr {int ifa_local; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 int RTM_NEWROUTE ;
 int RTN_LOCAL ;
 TYPE_1__* dev ;
 int fib_magic (int ,int ,int ,int,struct dn_ifaddr*) ;

__attribute__((used)) static void dn_fib_add_ifaddr(struct dn_ifaddr *ifa)
{

 fib_magic(RTM_NEWROUTE, RTN_LOCAL, ifa->ifa_local, 16, ifa);







}
