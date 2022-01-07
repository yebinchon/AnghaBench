
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {struct tcp_sack_block const* recv_sack_cache; } ;
struct tcp_sack_block {int dummy; } ;


 int ARRAY_SIZE (struct tcp_sack_block const*) ;

__attribute__((used)) static int tcp_sack_cache_ok(const struct tcp_sock *tp, const struct tcp_sack_block *cache)
{
 return cache < tp->recv_sack_cache + ARRAY_SIZE(tp->recv_sack_cache);
}
