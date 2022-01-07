
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rds_connection {int * c_path; TYPE_1__* c_trans; } ;
typedef int is_acked_func ;
struct TYPE_2__ {int t_mp_capable; } ;


 int WARN_ON (int ) ;
 int rds_send_path_drop_acked (int *,int ,int ) ;

void rds_send_drop_acked(struct rds_connection *conn, u64 ack,
    is_acked_func is_acked)
{
 WARN_ON(conn->c_trans->t_mp_capable);
 rds_send_path_drop_acked(&conn->c_path[0], ack, is_acked);
}
