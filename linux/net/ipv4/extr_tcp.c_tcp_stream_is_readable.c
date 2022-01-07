
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int copied_seq; int rcv_nxt; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* stream_memory_read ) (struct sock*) ;} ;


 int READ_ONCE (int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static inline bool tcp_stream_is_readable(const struct tcp_sock *tp,
       int target, struct sock *sk)
{
 return (READ_ONCE(tp->rcv_nxt) - READ_ONCE(tp->copied_seq) >= target) ||
  (sk->sk_prot->stream_memory_read ?
  sk->sk_prot->stream_memory_read(sk) : 0);
}
