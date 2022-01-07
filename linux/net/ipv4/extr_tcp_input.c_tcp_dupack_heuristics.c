
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int sacked_out; } ;



__attribute__((used)) static inline int tcp_dupack_heuristics(const struct tcp_sock *tp)
{
 return tp->sacked_out + 1;
}
