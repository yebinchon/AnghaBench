
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int dccp_destroy_sock (struct sock*) ;
 int inet6_destroy_sock (struct sock*) ;

__attribute__((used)) static void dccp_v6_destroy_sock(struct sock *sk)
{
 dccp_destroy_sock(sk);
 inet6_destroy_sock(sk);
}
