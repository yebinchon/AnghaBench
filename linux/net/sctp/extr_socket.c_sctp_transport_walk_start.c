
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_iter {int dummy; } ;


 int rhashtable_walk_start (struct rhashtable_iter*) ;
 int rhltable_walk_enter (int *,struct rhashtable_iter*) ;
 int sctp_transport_hashtable ;

void sctp_transport_walk_start(struct rhashtable_iter *iter)
{
 rhltable_walk_enter(&sctp_transport_hashtable, iter);

 rhashtable_walk_start(iter);
}
