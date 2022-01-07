
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_conn_w; int cp_flags; int cp_conn; } ;


 scalar_t__ RDS_CONN_DOWN ;
 int RDS_RECONNECT_PENDING ;
 int queue_delayed_work (int ,int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rds_conn_path_state (struct rds_conn_path*) ;
 scalar_t__ rds_destroy_pending (int ) ;
 int rds_wq ;
 int test_and_set_bit (int ,int *) ;

void rds_conn_path_connect_if_down(struct rds_conn_path *cp)
{
 rcu_read_lock();
 if (rds_destroy_pending(cp->cp_conn)) {
  rcu_read_unlock();
  return;
 }
 if (rds_conn_path_state(cp) == RDS_CONN_DOWN &&
     !test_and_set_bit(RDS_RECONNECT_PENDING, &cp->cp_flags))
  queue_delayed_work(rds_wq, &cp->cp_conn_w, 0);
 rcu_read_unlock();
}
