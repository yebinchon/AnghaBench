
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int packets_out; int prior_ssthresh; int snd_ssthresh; int snd_cwnd; } ;
struct sock {scalar_t__ sk_family; int sk_v6_daddr; } ;
struct inet_sock {int inet_dport; int inet_daddr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ntohs (int ) ;
 int pr_debug (char*,char const*,int *,int ,int ,int ,int ,int ,int ) ;
 int tcp_left_out (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void DBGUNDO(struct sock *sk, const char *msg)
{
}
