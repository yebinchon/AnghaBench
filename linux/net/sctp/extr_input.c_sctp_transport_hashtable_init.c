
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rhltable_init (int *,int *) ;
 int sctp_hash_params ;
 int sctp_transport_hashtable ;

int sctp_transport_hashtable_init(void)
{
 return rhltable_init(&sctp_transport_hashtable, &sctp_hash_params);
}
