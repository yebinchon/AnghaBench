
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcp_fastopen_cookie {int len; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;


 int TFO_CLIENT_NO_COOKIE ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 scalar_t__ tcp_fastopen_active_should_disable (struct sock*) ;
 int tcp_fastopen_cache_get (struct sock*,int *,struct tcp_fastopen_cookie*) ;
 scalar_t__ tcp_fastopen_no_cookie (struct sock*,struct dst_entry const*,int ) ;

bool tcp_fastopen_cookie_check(struct sock *sk, u16 *mss,
          struct tcp_fastopen_cookie *cookie)
{
 const struct dst_entry *dst;

 tcp_fastopen_cache_get(sk, mss, cookie);


 if (tcp_fastopen_active_should_disable(sk)) {
  cookie->len = -1;
  return 0;
 }

 dst = __sk_dst_get(sk);

 if (tcp_fastopen_no_cookie(sk, dst, TFO_CLIENT_NO_COOKIE)) {
  cookie->len = -1;
  return 1;
 }
 return cookie->len > 0;
}
