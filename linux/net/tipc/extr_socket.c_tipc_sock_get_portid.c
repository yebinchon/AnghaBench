
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 TYPE_1__* tipc_sk (struct sock*) ;

u32 tipc_sock_get_portid(struct sock *sk)
{
 return (sk) ? (tipc_sk(sk))->portid : 0;
}
