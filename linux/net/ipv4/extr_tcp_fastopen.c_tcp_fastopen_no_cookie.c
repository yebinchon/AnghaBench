
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int sysctl_tcp_fastopen; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {scalar_t__ fastopen_no_cookie; } ;


 int RTAX_FASTOPEN_NO_COOKIE ;
 scalar_t__ dst_metric (struct dst_entry const*,int ) ;
 TYPE_3__* sock_net (struct sock const*) ;
 TYPE_2__* tcp_sk (struct sock const*) ;

__attribute__((used)) static bool tcp_fastopen_no_cookie(const struct sock *sk,
       const struct dst_entry *dst,
       int flag)
{
 return (sock_net(sk)->ipv4.sysctl_tcp_fastopen & flag) ||
        tcp_sk(sk)->fastopen_no_cookie ||
        (dst && dst_metric(dst, RTAX_FASTOPEN_NO_COOKIE));
}
