
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
typedef int __be16 ;


 int AF_INET ;
 int INADDR_ANY ;
 int htonl (int ) ;

__attribute__((used)) static void sctp_v4_inaddr_any(union sctp_addr *addr, __be16 port)
{
 addr->v4.sin_family = AF_INET;
 addr->v4.sin_addr.s_addr = htonl(INADDR_ANY);
 addr->v4.sin_port = port;
}
