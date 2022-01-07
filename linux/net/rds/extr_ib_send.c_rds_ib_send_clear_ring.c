
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int opcode; } ;
struct rds_ib_send_work {TYPE_2__ s_wr; scalar_t__ s_op; } ;
struct TYPE_3__ {scalar_t__ w_nr; } ;
struct rds_ib_connection {TYPE_1__ i_send_ring; struct rds_ib_send_work* i_sends; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int rds_ib_send_unmap_op (struct rds_ib_connection*,struct rds_ib_send_work*,int ) ;

void rds_ib_send_clear_ring(struct rds_ib_connection *ic)
{
 struct rds_ib_send_work *send;
 u32 i;

 for (i = 0, send = ic->i_sends; i < ic->i_send_ring.w_nr; i++, send++) {
  if (send->s_op && send->s_wr.opcode != 0xdead)
   rds_ib_send_unmap_op(ic, send, IB_WC_WR_FLUSH_ERR);
 }
}
