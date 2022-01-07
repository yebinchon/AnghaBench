
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_sock {scalar_t__ pending; scalar_t__ len; } ;
struct sock {int dummy; } ;


 scalar_t__ AF_INET ;
 int ip6_flush_pending_frames (struct sock*) ;
 int udp_flush_pending_frames (struct sock*) ;
 struct udp_sock* udp_sk (struct sock*) ;

__attribute__((used)) static void udp_v6_flush_pending_frames(struct sock *sk)
{
 struct udp_sock *up = udp_sk(sk);

 if (up->pending == AF_INET)
  udp_flush_pending_frames(sk);
 else if (up->pending) {
  up->len = 0;
  up->pending = 0;
  ip6_flush_pending_frames(sk);
 }
}
