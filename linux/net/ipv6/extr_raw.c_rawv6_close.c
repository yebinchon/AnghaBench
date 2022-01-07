
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ inet_num; } ;


 scalar_t__ IPPROTO_RAW ;
 TYPE_1__* inet_sk (struct sock*) ;
 int ip6_ra_control (struct sock*,int) ;
 int ip6mr_sk_done (struct sock*) ;
 int sk_common_release (struct sock*) ;

__attribute__((used)) static void rawv6_close(struct sock *sk, long timeout)
{
 if (inet_sk(sk)->inet_num == IPPROTO_RAW)
  ip6_ra_control(sk, -1);
 ip6mr_sk_done(sk);
 sk_common_release(sk);
}
