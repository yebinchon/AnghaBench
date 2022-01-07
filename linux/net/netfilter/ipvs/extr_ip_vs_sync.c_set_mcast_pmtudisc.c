
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_family; } ;
struct ipv6_pinfo {int pmtudisc; } ;
struct inet_sock {int pmtudisc; } ;


 scalar_t__ AF_INET6 ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void set_mcast_pmtudisc(struct sock *sk, int val)
{
 struct inet_sock *inet = inet_sk(sk);


 lock_sock(sk);
 inet->pmtudisc = val;
 release_sock(sk);
}
