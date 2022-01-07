
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rx_dst; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ dst_hold_safe (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* xchg (int *,struct dst_entry*) ;

bool udp_sk_rx_dst_set(struct sock *sk, struct dst_entry *dst)
{
 struct dst_entry *old;

 if (dst_hold_safe(dst)) {
  old = xchg(&sk->sk_rx_dst, dst);
  dst_release(old);
  return old != dst;
 }
 return 0;
}
