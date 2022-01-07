
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sin6_port; } ;
union sctp_addr {TYPE_1__ v6; } ;


 scalar_t__ __sctp_v6_cmp_addr (union sctp_addr const*,union sctp_addr const*) ;

__attribute__((used)) static int sctp_v6_cmp_addr(const union sctp_addr *addr1,
       const union sctp_addr *addr2)
{
 return __sctp_v6_cmp_addr(addr1, addr2) &&
        addr1->v6.sin6_port == addr2->v6.sin6_port;
}
