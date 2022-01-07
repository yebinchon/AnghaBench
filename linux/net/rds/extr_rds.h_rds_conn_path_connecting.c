
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_state; } ;


 scalar_t__ RDS_CONN_CONNECTING ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline int
rds_conn_path_connecting(struct rds_conn_path *cp)
{
 return atomic_read(&cp->cp_state) == RDS_CONN_CONNECTING;
}
