
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_ping_triggered; struct rds_conn_path* c_path; } ;
struct rds_conn_path {int cp_lock; } ;


 int RDS_FLAG_PROBE_PORT ;
 int cpu_to_be16 (int ) ;
 int rds_send_probe (struct rds_conn_path*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
rds_send_ping(struct rds_connection *conn, int cp_index)
{
 unsigned long flags;
 struct rds_conn_path *cp = &conn->c_path[cp_index];

 spin_lock_irqsave(&cp->cp_lock, flags);
 if (conn->c_ping_triggered) {
  spin_unlock_irqrestore(&cp->cp_lock, flags);
  return;
 }
 conn->c_ping_triggered = 1;
 spin_unlock_irqrestore(&cp->cp_lock, flags);
 rds_send_probe(cp, cpu_to_be16(RDS_FLAG_PROBE_PORT), 0, 0);
}
