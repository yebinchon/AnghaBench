
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rds_tcp_connection {TYPE_1__* t_sock; } ;
struct TYPE_4__ {int write_seq; } ;
struct TYPE_3__ {int sk; } ;


 TYPE_2__* tcp_sk (int ) ;

u32 rds_tcp_write_seq(struct rds_tcp_connection *tc)
{

 return tcp_sk(tc->t_sock->sk)->write_seq;
}
