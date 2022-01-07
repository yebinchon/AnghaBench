
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_conn; } ;


 int rds_connect_complete (int ) ;

__attribute__((used)) static int rds_loop_conn_path_connect(struct rds_conn_path *cp)
{
 rds_connect_complete(cp->cp_conn);
 return 0;
}
