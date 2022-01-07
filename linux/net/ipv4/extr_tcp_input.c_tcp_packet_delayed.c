
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ retrans_stamp; } ;


 scalar_t__ tcp_tsopt_ecr_before (struct tcp_sock const*,scalar_t__) ;

__attribute__((used)) static inline bool tcp_packet_delayed(const struct tcp_sock *tp)
{
 return tp->retrans_stamp &&
        tcp_tsopt_ecr_before(tp, tp->retrans_stamp);
}
