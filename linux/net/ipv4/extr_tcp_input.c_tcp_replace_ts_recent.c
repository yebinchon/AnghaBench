
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; int rcv_wup; } ;


 int after (int ,int ) ;
 scalar_t__ tcp_paws_check (TYPE_1__*,int ) ;
 int tcp_store_ts_recent (struct tcp_sock*) ;

__attribute__((used)) static void tcp_replace_ts_recent(struct tcp_sock *tp, u32 seq)
{
 if (tp->rx_opt.saw_tstamp && !after(seq, tp->rcv_wup)) {







  if (tcp_paws_check(&tp->rx_opt, 0))
   tcp_store_ts_recent(tp);
 }
}
