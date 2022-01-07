
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_type; } ;


 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RDM ;

__attribute__((used)) static bool tipc_sk_type_connectionless(struct sock *sk)
{
 return sk->sk_type == SOCK_RDM || sk->sk_type == SOCK_DGRAM;
}
