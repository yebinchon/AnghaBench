
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* sk_data_ready ) (TYPE_1__*) ;} ;
struct xdp_sock {TYPE_1__ sk; int rx; } ;


 int stub1 (TYPE_1__*) ;
 int xskq_produce_flush_desc (int ) ;

void xsk_flush(struct xdp_sock *xs)
{
 xskq_produce_flush_desc(xs->rx);
 xs->sk.sk_data_ready(&xs->sk);
}
