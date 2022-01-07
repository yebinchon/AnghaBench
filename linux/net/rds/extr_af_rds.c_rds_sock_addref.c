
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int dummy; } ;


 int rds_rs_to_sk (struct rds_sock*) ;
 int sock_hold (int ) ;

void rds_sock_addref(struct rds_sock *rs)
{
 sock_hold(rds_rs_to_sk(rs));
}
