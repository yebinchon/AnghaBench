
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_error_report ) (struct sock*) ;scalar_t__ sk_err_soft; int sk_err; } ;


 int ETIMEDOUT ;
 int LINUX_MIB_TCPABORTONTIMEOUT ;
 int __NET_INC_STATS (int ,int ) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_write_queue_purge (struct sock*) ;

__attribute__((used)) static void tcp_write_err(struct sock *sk)
{
 sk->sk_err = sk->sk_err_soft ? : ETIMEDOUT;
 sk->sk_error_report(sk);

 tcp_write_queue_purge(sk);
 tcp_done(sk);
 __NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONTIMEOUT);
}
