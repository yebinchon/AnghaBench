
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct rds_conn_path {struct rds_connection* cp_conn; } ;


 int rds_ib_attempt_ack (struct rds_ib_connection*) ;

void rds_ib_xmit_path_complete(struct rds_conn_path *cp)
{
 struct rds_connection *conn = cp->cp_conn;
 struct rds_ib_connection *ic = conn->c_transport_data;



 rds_ib_attempt_ack(ic);
}
