
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct inet_sock {int inet_num; int inet_sport; } ;
struct TYPE_2__ {scalar_t__ (* get_port ) (struct sock*,int ) ;} ;


 int EAGAIN ;
 int htons (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ stub1 (struct sock*,int ) ;

__attribute__((used)) static int inet_autobind(struct sock *sk)
{
 struct inet_sock *inet;

 lock_sock(sk);
 inet = inet_sk(sk);
 if (!inet->inet_num) {
  if (sk->sk_prot->get_port(sk, 0)) {
   release_sock(sk);
   return -EAGAIN;
  }
  inet->inet_sport = htons(inet->inet_num);
 }
 release_sock(sk);
 return 0;
}
