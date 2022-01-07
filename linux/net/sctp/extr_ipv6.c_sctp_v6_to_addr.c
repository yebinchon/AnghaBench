
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_4__ {scalar_t__ sin6_scope_id; struct in6_addr sin6_addr; scalar_t__ sin6_flowinfo; int sin6_port; } ;
struct TYPE_3__ {int sa_family; } ;
union sctp_addr {TYPE_2__ v6; TYPE_1__ sa; } ;
typedef int __be16 ;


 int AF_INET6 ;

__attribute__((used)) static void sctp_v6_to_addr(union sctp_addr *addr, struct in6_addr *saddr,
         __be16 port)
{
 addr->sa.sa_family = AF_INET6;
 addr->v6.sin6_port = port;
 addr->v6.sin6_flowinfo = 0;
 addr->v6.sin6_addr = *saddr;
 addr->v6.sin6_scope_id = 0;
}
