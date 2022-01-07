
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct socket {int dummy; } ;
struct rds_info_lengths {int dummy; } ;
struct rds_info_iterator {int dummy; } ;
struct rds_info_connection {int dummy; } ;


 int rds_conn_info_visitor ;
 int rds_walk_conn_path_info (struct socket*,unsigned int,struct rds_info_iterator*,struct rds_info_lengths*,int ,int *,int) ;

__attribute__((used)) static void rds_conn_info(struct socket *sock, unsigned int len,
     struct rds_info_iterator *iter,
     struct rds_info_lengths *lens)
{
 u64 buffer[(sizeof(struct rds_info_connection) + 7) / 8];

 rds_walk_conn_path_info(sock, len, iter, lens,
    rds_conn_info_visitor,
    buffer,
    sizeof(struct rds_info_connection));
}
