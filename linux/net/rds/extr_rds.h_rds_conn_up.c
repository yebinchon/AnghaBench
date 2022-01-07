
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_connection {int * c_path; TYPE_1__* c_trans; } ;
struct TYPE_2__ {int t_mp_capable; } ;


 int WARN_ON (int ) ;
 int rds_conn_path_up (int *) ;

__attribute__((used)) static inline int
rds_conn_up(struct rds_connection *conn)
{
 WARN_ON(conn->c_trans->t_mp_capable);
 return rds_conn_path_up(&conn->c_path[0]);
}
