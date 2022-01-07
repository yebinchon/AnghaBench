
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ probe_size; scalar_t__ search_high; } ;
struct inet_connection_sock {TYPE_1__ icsk_mtup; } ;


 int LINUX_MIB_TCPMTUPFAIL ;
 int NET_INC_STATS (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static void tcp_mtup_probe_failed(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 icsk->icsk_mtup.search_high = icsk->icsk_mtup.probe_size - 1;
 icsk->icsk_mtup.probe_size = 0;
 NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPMTUPFAIL);
}
