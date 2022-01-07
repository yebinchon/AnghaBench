
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int dummy; } ;
typedef int __be16 ;


 int rds_send_probe (struct rds_conn_path*,int ,int ,int ) ;

int
rds_send_pong(struct rds_conn_path *cp, __be16 dport)
{
 return rds_send_probe(cp, 0, dport, 0);
}
