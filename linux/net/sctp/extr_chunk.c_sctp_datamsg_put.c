
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_datamsg {int refcnt; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int sctp_datamsg_destroy (struct sctp_datamsg*) ;

void sctp_datamsg_put(struct sctp_datamsg *msg)
{
 if (refcount_dec_and_test(&msg->refcnt))
  sctp_datamsg_destroy(msg);
}
