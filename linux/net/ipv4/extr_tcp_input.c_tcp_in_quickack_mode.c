
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;
struct dst_entry {int dummy; } ;


 int RTAX_QUICKACK ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 scalar_t__ dst_metric (struct dst_entry const*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_in_pingpong_mode (struct sock*) ;

__attribute__((used)) static bool tcp_in_quickack_mode(struct sock *sk)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 const struct dst_entry *dst = __sk_dst_get(sk);

 return (dst && dst_metric(dst, RTAX_QUICKACK)) ||
  (icsk->icsk_ack.quick && !inet_csk_in_pingpong_mode(sk));
}
