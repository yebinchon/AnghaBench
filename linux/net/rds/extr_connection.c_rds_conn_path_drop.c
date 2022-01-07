
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_down_w; int cp_conn; int cp_state; } ;


 int RDS_CONN_ERROR ;
 int atomic_set (int *,int ) ;
 int queue_work (int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rds_destroy_pending (int ) ;
 int rds_wq ;

void rds_conn_path_drop(struct rds_conn_path *cp, bool destroy)
{
 atomic_set(&cp->cp_state, RDS_CONN_ERROR);

 rcu_read_lock();
 if (!destroy && rds_destroy_pending(cp->cp_conn)) {
  rcu_read_unlock();
  return;
 }
 queue_work(rds_wq, &cp->cp_down_w);
 rcu_read_unlock();
}
