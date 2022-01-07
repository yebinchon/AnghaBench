
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ packets_out; } ;


 int TCP_NAGLE_CORK ;
 scalar_t__ tcp_minshall_check (struct tcp_sock const*) ;

__attribute__((used)) static bool tcp_nagle_check(bool partial, const struct tcp_sock *tp,
       int nonagle)
{
 return partial &&
  ((nonagle & TCP_NAGLE_CORK) ||
   (!nonagle && tp->packets_out && tcp_minshall_check(tp)));
}
