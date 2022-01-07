
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_iter {int dummy; } ;


 int rhashtable_walk_exit (struct rhashtable_iter*) ;
 int rhashtable_walk_stop (struct rhashtable_iter*) ;

void sctp_transport_walk_stop(struct rhashtable_iter *iter)
{
 rhashtable_walk_stop(iter);
 rhashtable_walk_exit(iter);
}
