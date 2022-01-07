
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct rds_conn_path {struct rds_connection* cp_conn; } ;


 int GFP_KERNEL ;
 scalar_t__ rds_conn_up (struct rds_connection*) ;
 int rds_ib_attempt_ack (struct rds_ib_connection*) ;
 int rds_ib_recv_refill (struct rds_connection*,int ,int ) ;
 int rds_ib_stats_inc (int ) ;
 int rdsdebug (char*,struct rds_connection*) ;
 int s_ib_rx_refill_from_thread ;

int rds_ib_recv_path(struct rds_conn_path *cp)
{
 struct rds_connection *conn = cp->cp_conn;
 struct rds_ib_connection *ic = conn->c_transport_data;

 rdsdebug("conn %p\n", conn);
 if (rds_conn_up(conn)) {
  rds_ib_attempt_ack(ic);
  rds_ib_recv_refill(conn, 0, GFP_KERNEL);
  rds_ib_stats_inc(s_ib_rx_refill_from_thread);
 }

 return 0;
}
