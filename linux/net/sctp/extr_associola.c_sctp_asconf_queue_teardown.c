
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {scalar_t__ addip_last_asconf; } ;


 int sctp_assoc_free_asconf_acks (struct sctp_association*) ;
 int sctp_assoc_free_asconf_queue (struct sctp_association*) ;
 int sctp_chunk_free (scalar_t__) ;

void sctp_asconf_queue_teardown(struct sctp_association *asoc)
{

 sctp_assoc_free_asconf_acks(asoc);


 sctp_assoc_free_asconf_queue(asoc);


 if (asoc->addip_last_asconf)
  sctp_chunk_free(asoc->addip_last_asconf);
}
