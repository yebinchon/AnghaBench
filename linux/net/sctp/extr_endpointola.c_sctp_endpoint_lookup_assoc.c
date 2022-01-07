
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {struct sctp_association* asoc; } ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {TYPE_1__ bind_addr; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct sctp_association {int dummy; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sctp_transport* sctp_epaddr_lookup_transport (struct sctp_endpoint const*,union sctp_addr const*) ;

struct sctp_association *sctp_endpoint_lookup_assoc(
 const struct sctp_endpoint *ep,
 const union sctp_addr *paddr,
 struct sctp_transport **transport)
{
 struct sctp_association *asoc = ((void*)0);
 struct sctp_transport *t;

 *transport = ((void*)0);




 if (!ep->base.bind_addr.port)
  return ((void*)0);

 rcu_read_lock();
 t = sctp_epaddr_lookup_transport(ep, paddr);
 if (!t)
  goto out;

 *transport = t;
 asoc = t->asoc;
out:
 rcu_read_unlock();
 return asoc;
}
