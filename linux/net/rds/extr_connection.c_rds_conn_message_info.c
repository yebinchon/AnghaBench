
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rds_info_lengths {int dummy; } ;
struct rds_info_iterator {int dummy; } ;


 int rds_conn_message_info_cmn (struct socket*,unsigned int,struct rds_info_iterator*,struct rds_info_lengths*,int,int) ;

__attribute__((used)) static void rds_conn_message_info(struct socket *sock, unsigned int len,
      struct rds_info_iterator *iter,
      struct rds_info_lengths *lens,
      int want_send)
{
 rds_conn_message_info_cmn(sock, len, iter, lens, want_send, 0);
}
