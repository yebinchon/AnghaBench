
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int inet_num; } ;
struct TYPE_3__ {int no_autobind; } ;


 int EAGAIN ;
 scalar_t__ inet_autobind (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int sock_rps_record_flow (struct sock*) ;

int inet_send_prepare(struct sock *sk)
{
 sock_rps_record_flow(sk);


 if (!inet_sk(sk)->inet_num && !sk->sk_prot->no_autobind &&
     inet_autobind(sk))
  return -EAGAIN;

 return 0;
}
