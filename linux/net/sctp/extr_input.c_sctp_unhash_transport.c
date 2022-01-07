
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_transport {int node; TYPE_1__* asoc; } ;
struct TYPE_2__ {scalar_t__ temp; } ;


 int rhltable_remove (int *,int *,int ) ;
 int sctp_hash_params ;
 int sctp_transport_hashtable ;

void sctp_unhash_transport(struct sctp_transport *t)
{
 if (t->asoc->temp)
  return;

 rhltable_remove(&sctp_transport_hashtable, &t->node,
   sctp_hash_params);
}
