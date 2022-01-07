
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_faddr; int c_laddr; } ;
struct rds_conn_path {scalar_t__ cp_flags; struct rds_connection* cp_conn; } ;


 int rds_send_path_reset (struct rds_conn_path*) ;
 int rds_stats_inc (int ) ;
 int rdsdebug (char*,int *,int *) ;
 int s_conn_reset ;

__attribute__((used)) static void rds_conn_path_reset(struct rds_conn_path *cp)
{
 struct rds_connection *conn = cp->cp_conn;

 rdsdebug("connection %pI6c to %pI6c reset\n",
   &conn->c_laddr, &conn->c_faddr);

 rds_stats_inc(s_conn_reset);
 rds_send_path_reset(cp);
 cp->cp_flags = 0;





}
