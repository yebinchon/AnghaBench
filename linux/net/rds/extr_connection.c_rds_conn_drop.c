
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_connection {int * c_path; TYPE_1__* c_trans; } ;
struct TYPE_2__ {int t_mp_capable; } ;


 int WARN_ON (int ) ;
 int rds_conn_path_drop (int *,int) ;

void rds_conn_drop(struct rds_connection *conn)
{
 WARN_ON(conn->c_trans->t_mp_capable);
 rds_conn_path_drop(&conn->c_path[0], 0);
}
