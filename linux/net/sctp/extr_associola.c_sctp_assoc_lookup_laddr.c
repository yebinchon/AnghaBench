
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin_port; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct TYPE_6__ {scalar_t__ port; } ;
struct TYPE_5__ {int sk; TYPE_3__ bind_addr; } ;
struct sctp_association {TYPE_2__ base; } ;


 scalar_t__ ntohs (int ) ;
 scalar_t__ sctp_bind_addr_match (TYPE_3__*,union sctp_addr const*,int ) ;
 int sctp_sk (int ) ;

int sctp_assoc_lookup_laddr(struct sctp_association *asoc,
       const union sctp_addr *laddr)
{
 int found = 0;

 if ((asoc->base.bind_addr.port == ntohs(laddr->v4.sin_port)) &&
     sctp_bind_addr_match(&asoc->base.bind_addr, laddr,
     sctp_sk(asoc->base.sk)))
  found = 1;

 return found;
}
