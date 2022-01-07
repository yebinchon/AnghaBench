
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* s6_addr32; } ;
struct TYPE_8__ {TYPE_5__ sin6_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;
struct TYPE_9__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_3__ v6; TYPE_2__ v4; TYPE_4__ sa; } ;
struct sock {TYPE_5__ sk_v6_rcv_saddr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ htonl (int) ;

__attribute__((used)) static void sctp_v6_to_sk_saddr(union sctp_addr *addr, struct sock *sk)
{
 if (addr->sa.sa_family == AF_INET) {
  sk->sk_v6_rcv_saddr.s6_addr32[0] = 0;
  sk->sk_v6_rcv_saddr.s6_addr32[1] = 0;
  sk->sk_v6_rcv_saddr.s6_addr32[2] = htonl(0x0000ffff);
  sk->sk_v6_rcv_saddr.s6_addr32[3] =
   addr->v4.sin_addr.s_addr;
 } else {
  sk->sk_v6_rcv_saddr = addr->v6.sin6_addr;
 }
}
