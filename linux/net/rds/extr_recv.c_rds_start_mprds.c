
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_npaths; struct rds_conn_path* c_path; int c_faddr; int c_laddr; } ;
struct rds_conn_path {int dummy; } ;


 scalar_t__ rds_addr_cmp (int *,int *) ;
 int rds_conn_path_connect_if_down (struct rds_conn_path*) ;

__attribute__((used)) static void rds_start_mprds(struct rds_connection *conn)
{
 int i;
 struct rds_conn_path *cp;

 if (conn->c_npaths > 1 &&
     rds_addr_cmp(&conn->c_laddr, &conn->c_faddr) < 0) {
  for (i = 0; i < conn->c_npaths; i++) {
   cp = &conn->c_path[i];
   rds_conn_path_connect_if_down(cp);
  }
 }
}
