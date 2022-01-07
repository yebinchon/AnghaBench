
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; scalar_t__ sin6_port; int sin6_family; } ;
union sctp_addr {TYPE_1__ v6; } ;
struct sock {int sk_v6_rcv_saddr; } ;


 int AF_INET6 ;

__attribute__((used)) static void sctp_v6_from_sk(union sctp_addr *addr, struct sock *sk)
{
 addr->v6.sin6_family = AF_INET6;
 addr->v6.sin6_port = 0;
 addr->v6.sin6_addr = sk->sk_v6_rcv_saddr;
}
