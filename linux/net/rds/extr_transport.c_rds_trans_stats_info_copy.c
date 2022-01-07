
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {unsigned int (* stats_info_copy ) (struct rds_info_iterator*,unsigned int) ;} ;
struct rds_info_iterator {int dummy; } ;


 int RDS_TRANS_COUNT ;
 int down_read (int *) ;
 scalar_t__ min (unsigned int,unsigned int) ;
 int rds_info_iter_unmap (struct rds_info_iterator*) ;
 int rds_trans_sem ;
 unsigned int stub1 (struct rds_info_iterator*,unsigned int) ;
 struct rds_transport** transports ;
 int up_read (int *) ;

unsigned int rds_trans_stats_info_copy(struct rds_info_iterator *iter,
           unsigned int avail)

{
 struct rds_transport *trans;
 unsigned int total = 0;
 unsigned int part;
 int i;

 rds_info_iter_unmap(iter);
 down_read(&rds_trans_sem);

 for (i = 0; i < RDS_TRANS_COUNT; i++) {
  trans = transports[i];
  if (!trans || !trans->stats_info_copy)
   continue;

  part = trans->stats_info_copy(iter, avail);
  avail -= min(avail, part);
  total += part;
 }

 up_read(&rds_trans_sem);

 return total;
}
