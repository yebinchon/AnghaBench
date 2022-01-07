
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_port; int sin6_family; } ;
union sctp_addr {TYPE_1__ v6; } ;
typedef int __be16 ;


 int AF_INET6 ;
 int memset (union sctp_addr*,int,int) ;

__attribute__((used)) static void sctp_v6_inaddr_any(union sctp_addr *addr, __be16 port)
{
 memset(addr, 0x00, sizeof(union sctp_addr));
 addr->v6.sin6_family = AF_INET6;
 addr->v6.sin6_port = port;
}
