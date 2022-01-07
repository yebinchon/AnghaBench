
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int refcnt; } ;


 int refcount_inc_not_zero (int *) ;

int sctp_transport_hold(struct sctp_transport *transport)
{
 return refcount_inc_not_zero(&transport->refcnt);
}
