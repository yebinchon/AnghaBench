
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sge {int length; int lkey; int addr; } ;
struct ib_send_wr {int num_sge; int send_flags; int wr_id; int opcode; struct ib_sge* sg_list; } ;
struct rds_ib_connection {TYPE_1__* i_pd; int i_ack_dma; struct ib_sge i_ack_sge; struct ib_send_wr i_ack_wr; } ;
struct rds_header {int dummy; } ;
struct TYPE_2__ {int local_dma_lkey; } ;


 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;
 int IB_WR_SEND ;
 int RDS_IB_ACK_WR_ID ;

void rds_ib_recv_init_ack(struct rds_ib_connection *ic)
{
 struct ib_send_wr *wr = &ic->i_ack_wr;
 struct ib_sge *sge = &ic->i_ack_sge;

 sge->addr = ic->i_ack_dma;
 sge->length = sizeof(struct rds_header);
 sge->lkey = ic->i_pd->local_dma_lkey;

 wr->sg_list = sge;
 wr->num_sge = 1;
 wr->opcode = IB_WR_SEND;
 wr->wr_id = RDS_IB_ACK_WR_ID;
 wr->send_flags = IB_SEND_SIGNALED | IB_SEND_SOLICITED;
}
