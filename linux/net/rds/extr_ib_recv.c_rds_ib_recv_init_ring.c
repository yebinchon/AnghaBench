
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int wr_id; int num_sge; struct ib_sge* sg_list; int * next; } ;
struct rds_ib_recv_work {struct ib_sge* r_sge; TYPE_2__ r_wr; int * r_frag; int * r_ibinc; } ;
struct TYPE_4__ {int w_nr; } ;
struct rds_ib_connection {TYPE_3__* i_pd; scalar_t__ i_recv_hdrs_dma; TYPE_1__ i_recv_ring; struct rds_ib_recv_work* i_recvs; } ;
struct rds_header {int dummy; } ;
struct ib_sge {int length; int lkey; scalar_t__ addr; } ;
struct TYPE_6__ {int local_dma_lkey; } ;


 int RDS_FRAG_SIZE ;
 int RDS_IB_RECV_SGE ;

void rds_ib_recv_init_ring(struct rds_ib_connection *ic)
{
 struct rds_ib_recv_work *recv;
 u32 i;

 for (i = 0, recv = ic->i_recvs; i < ic->i_recv_ring.w_nr; i++, recv++) {
  struct ib_sge *sge;

  recv->r_ibinc = ((void*)0);
  recv->r_frag = ((void*)0);

  recv->r_wr.next = ((void*)0);
  recv->r_wr.wr_id = i;
  recv->r_wr.sg_list = recv->r_sge;
  recv->r_wr.num_sge = RDS_IB_RECV_SGE;

  sge = &recv->r_sge[0];
  sge->addr = ic->i_recv_hdrs_dma + (i * sizeof(struct rds_header));
  sge->length = sizeof(struct rds_header);
  sge->lkey = ic->i_pd->local_dma_lkey;

  sge = &recv->r_sge[1];
  sge->addr = 0;
  sge->length = RDS_FRAG_SIZE;
  sge->lkey = ic->i_pd->local_dma_lkey;
 }
}
