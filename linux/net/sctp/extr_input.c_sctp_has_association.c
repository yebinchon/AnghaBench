
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ sctp_lookup_association (struct net*,union sctp_addr const*,union sctp_addr const*,struct sctp_transport**) ;
 int sctp_transport_put (struct sctp_transport*) ;

bool sctp_has_association(struct net *net,
     const union sctp_addr *laddr,
     const union sctp_addr *paddr)
{
 struct sctp_transport *transport;

 if (sctp_lookup_association(net, laddr, paddr, &transport)) {
  sctp_transport_put(transport);
  return 1;
 }

 return 0;
}
