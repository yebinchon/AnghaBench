
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct inet_timewait_death_row {int dummy; } ;
struct TYPE_2__ {int inet_num; } ;


 int __inet6_check_established ;
 int __inet_hash_connect (struct inet_timewait_death_row*,struct sock*,int ,int ) ;
 int inet6_sk_port_offset (struct sock*) ;
 TYPE_1__* inet_sk (struct sock*) ;

int inet6_hash_connect(struct inet_timewait_death_row *death_row,
         struct sock *sk)
{
 u32 port_offset = 0;

 if (!inet_sk(sk)->inet_num)
  port_offset = inet6_sk_port_offset(sk);
 return __inet_hash_connect(death_row, sk, port_offset,
       __inet6_check_established);
}
