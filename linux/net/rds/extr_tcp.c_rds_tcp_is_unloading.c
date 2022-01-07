
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int rds_tcp_unloading ;

__attribute__((used)) static bool rds_tcp_is_unloading(struct rds_connection *conn)
{
 return atomic_read(&rds_tcp_unloading) != 0;
}
