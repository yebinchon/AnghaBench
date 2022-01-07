
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dsack_seen; } ;
struct TYPE_3__ {int sack_ok; } ;
struct tcp_sock {int dsack_dups; TYPE_2__ rack; TYPE_1__ rx_opt; } ;


 int TCP_DSACK_SEEN ;

__attribute__((used)) static void tcp_dsack_seen(struct tcp_sock *tp)
{
 tp->rx_opt.sack_ok |= TCP_DSACK_SEEN;
 tp->rack.dsack_seen = 1;
 tp->dsack_dups++;
}
