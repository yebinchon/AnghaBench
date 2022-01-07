
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct TYPE_7__ {TYPE_4__ sin_addr; } ;
union sctp_addr {TYPE_3__ v4; } ;
struct TYPE_6__ {int freebind; int sk; } ;
struct sctp_sock {TYPE_2__ inet; } ;
struct TYPE_5__ {int sysctl_ip_nonlocal_bind; } ;
struct net {TYPE_1__ ipv4; } ;


 int INADDR_ANY ;
 int RTN_LOCAL ;
 int htonl (int ) ;
 int inet_addr_type (struct net*,int ) ;
 scalar_t__ ipv6_only_sock (int ) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 struct net* sock_net (int *) ;

__attribute__((used)) static int sctp_v4_available(union sctp_addr *addr, struct sctp_sock *sp)
{
 struct net *net = sock_net(&sp->inet.sk);
 int ret = inet_addr_type(net, addr->v4.sin_addr.s_addr);


 if (addr->v4.sin_addr.s_addr != htonl(INADDR_ANY) &&
    ret != RTN_LOCAL &&
    !sp->inet.freebind &&
    !net->ipv4.sysctl_ip_nonlocal_bind)
  return 0;

 if (ipv6_only_sock(sctp_opt2sk(sp)))
  return 0;

 return 1;
}
