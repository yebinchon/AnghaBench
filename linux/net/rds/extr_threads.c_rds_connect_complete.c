
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int * c_path; } ;


 int RDS_CONN_CONNECTING ;
 int rds_connect_path_complete (int *,int ) ;

void rds_connect_complete(struct rds_connection *conn)
{
 rds_connect_path_complete(&conn->c_path[0], RDS_CONN_CONNECTING);
}
