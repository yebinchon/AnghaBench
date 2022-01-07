
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int sin6_addr; void* sin6_port; scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; int sin6_family; } ;
struct TYPE_7__ {int sin_addr; void* sin_port; scalar_t__ sin_family; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_4__ v6; TYPE_2__ v4; TYPE_1__ sa; } ;
struct sctp_ulpevent {struct sctp_association* asoc; } ;
struct TYPE_10__ {int sk; } ;
struct TYPE_8__ {int port; union sctp_addr primary_addr; } ;
struct sctp_association {TYPE_5__ base; TYPE_3__ peer; } ;


 scalar_t__ AF_INET ;
 int AF_INET6 ;
 int IPV6_ADDR_LINKLOCAL ;
 void* htons (int ) ;
 int ipv6_addr_type (int *) ;
 int sctp_sk (int ) ;
 int sctp_v6_addr_to_user (int ,union sctp_addr*) ;

__attribute__((used)) static void sctp_inet6_event_msgname(struct sctp_ulpevent *event,
         char *msgname, int *addrlen)
{
 union sctp_addr *addr;
 struct sctp_association *asoc;
 union sctp_addr *paddr;

 if (!msgname)
  return;

 addr = (union sctp_addr *)msgname;
 asoc = event->asoc;
 paddr = &asoc->peer.primary_addr;

 if (paddr->sa.sa_family == AF_INET) {
  addr->v4.sin_family = AF_INET;
  addr->v4.sin_port = htons(asoc->peer.port);
  addr->v4.sin_addr = paddr->v4.sin_addr;
 } else {
  addr->v6.sin6_family = AF_INET6;
  addr->v6.sin6_flowinfo = 0;
  if (ipv6_addr_type(&paddr->v6.sin6_addr) & IPV6_ADDR_LINKLOCAL)
   addr->v6.sin6_scope_id = paddr->v6.sin6_scope_id;
  else
   addr->v6.sin6_scope_id = 0;
  addr->v6.sin6_port = htons(asoc->peer.port);
  addr->v6.sin6_addr = paddr->v6.sin6_addr;
 }

 *addrlen = sctp_v6_addr_to_user(sctp_sk(asoc->base.sk), addr);
}
