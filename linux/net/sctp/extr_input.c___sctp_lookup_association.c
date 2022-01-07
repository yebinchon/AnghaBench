
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {struct sctp_association* asoc; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;


 struct sctp_transport* sctp_addrs_lookup_transport (struct net*,union sctp_addr const*,union sctp_addr const*) ;

__attribute__((used)) static struct sctp_association *__sctp_lookup_association(
     struct net *net,
     const union sctp_addr *local,
     const union sctp_addr *peer,
     struct sctp_transport **pt)
{
 struct sctp_transport *t;
 struct sctp_association *asoc = ((void*)0);

 t = sctp_addrs_lookup_transport(net, local, peer);
 if (!t)
  goto out;

 asoc = t->asoc;
 *pt = t;

out:
 return asoc;
}
