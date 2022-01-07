
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {scalar_t__ rcv_nxt; int rcv_wup; } ;


 int after (int ,scalar_t__) ;
 int before (int ,int ) ;
 scalar_t__ tcp_receive_window (struct tcp_sock const*) ;

__attribute__((used)) static inline bool tcp_sequence(const struct tcp_sock *tp, u32 seq, u32 end_seq)
{
 return !before(end_seq, tp->rcv_wup) &&
  !after(seq, tp->rcv_nxt + tcp_receive_window(tp));
}
