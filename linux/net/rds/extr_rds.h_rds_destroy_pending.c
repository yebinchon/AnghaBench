
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_connection {TYPE_1__* c_trans; } ;
struct TYPE_2__ {scalar_t__ (* t_unloading ) (struct rds_connection*) ;} ;


 int check_net (int ) ;
 int rds_conn_net (struct rds_connection*) ;
 scalar_t__ stub1 (struct rds_connection*) ;

__attribute__((used)) static inline bool rds_destroy_pending(struct rds_connection *conn)
{
 return !check_net(rds_conn_net(conn)) ||
        (conn->c_trans->t_unloading && conn->c_trans->t_unloading(conn));
}
