
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {struct rds_conn_path* c_path; } ;
struct rds_conn_path {int cp_flags; } ;


 int RDS_DESTROY_PENDING ;
 scalar_t__ atomic_read (int *) ;
 int rds_ib_unloading ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool rds_ib_is_unloading(struct rds_connection *conn)
{
 struct rds_conn_path *cp = &conn->c_path[0];

 return (test_bit(RDS_DESTROY_PENDING, &cp->cp_flags) ||
  atomic_read(&rds_ib_unloading) != 0);
}
