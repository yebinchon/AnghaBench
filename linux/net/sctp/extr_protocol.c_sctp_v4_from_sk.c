
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sock {int dummy; } ;
struct TYPE_6__ {int inet_rcv_saddr; } ;


 int AF_INET ;
 TYPE_3__* inet_sk (struct sock*) ;

__attribute__((used)) static void sctp_v4_from_sk(union sctp_addr *addr, struct sock *sk)
{
 addr->v4.sin_family = AF_INET;
 addr->v4.sin_port = 0;
 addr->v4.sin_addr.s_addr = inet_sk(sk)->inet_rcv_saddr;
}
