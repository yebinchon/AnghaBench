
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qlen; } ;
struct sock {TYPE_1__ sk_write_queue; } ;
struct TYPE_4__ {scalar_t__ dccps_tx_qlen; } ;


 TYPE_2__* dccp_sk (struct sock*) ;

__attribute__((used)) static bool qpolicy_simple_full(struct sock *sk)
{
 return dccp_sk(sk)->dccps_tx_qlen &&
        sk->sk_write_queue.qlen >= dccp_sk(sk)->dccps_tx_qlen;
}
