
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ TIPC_ESTABLISHED ;

__attribute__((used)) static bool tipc_sk_connected(struct sock *sk)
{
 return sk->sk_state == TIPC_ESTABLISHED;
}
