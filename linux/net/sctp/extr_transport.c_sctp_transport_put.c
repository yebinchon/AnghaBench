
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int refcnt; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int sctp_transport_destroy (struct sctp_transport*) ;

void sctp_transport_put(struct sctp_transport *transport)
{
 if (refcount_dec_and_test(&transport->refcnt))
  sctp_transport_destroy(transport);
}
