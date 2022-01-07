
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sin_port; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct TYPE_6__ {int port; } ;
struct TYPE_5__ {int sk; TYPE_3__ bind_addr; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct net {int dummy; } ;


 scalar_t__ htons (int ) ;
 scalar_t__ net_eq (int ,struct net*) ;
 scalar_t__ sctp_bind_addr_match (TYPE_3__*,union sctp_addr const*,int ) ;
 int sctp_sk (int ) ;
 int sock_net (int ) ;

struct sctp_endpoint *sctp_endpoint_is_match(struct sctp_endpoint *ep,
            struct net *net,
            const union sctp_addr *laddr)
{
 struct sctp_endpoint *retval = ((void*)0);

 if ((htons(ep->base.bind_addr.port) == laddr->v4.sin_port) &&
     net_eq(sock_net(ep->base.sk), net)) {
  if (sctp_bind_addr_match(&ep->base.bind_addr, laddr,
      sctp_sk(ep->base.sk)))
   retval = ep;
 }

 return retval;
}
