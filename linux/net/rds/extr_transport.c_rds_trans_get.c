
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {int t_type; int t_owner; } ;


 unsigned int RDS_TRANS_COUNT ;
 int down_read (int *) ;
 int rds_trans_sem ;
 struct rds_transport** transports ;
 scalar_t__ try_module_get (int ) ;
 int up_read (int *) ;

struct rds_transport *rds_trans_get(int t_type)
{
 struct rds_transport *ret = ((void*)0);
 struct rds_transport *trans;
 unsigned int i;

 down_read(&rds_trans_sem);
 for (i = 0; i < RDS_TRANS_COUNT; i++) {
  trans = transports[i];

  if (trans && trans->t_type == t_type &&
      (!trans->t_owner || try_module_get(trans->t_owner))) {
   ret = trans;
   break;
  }
 }
 up_read(&rds_trans_sem);

 return ret;
}
