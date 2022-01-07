
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_ib_recv_work {TYPE_3__* r_frag; TYPE_1__* r_ibinc; } ;
struct rds_ib_connection {TYPE_2__* i_cm_id; } ;
struct TYPE_6__ {int f_sg; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int ii_inc; } ;


 int DMA_FROM_DEVICE ;
 int ib_dma_unmap_sg (int ,int *,int,int ) ;
 int rds_ib_frag_free (struct rds_ib_connection*,TYPE_3__*) ;
 int rds_inc_put (int *) ;

__attribute__((used)) static void rds_ib_recv_clear_one(struct rds_ib_connection *ic,
      struct rds_ib_recv_work *recv)
{
 if (recv->r_ibinc) {
  rds_inc_put(&recv->r_ibinc->ii_inc);
  recv->r_ibinc = ((void*)0);
 }
 if (recv->r_frag) {
  ib_dma_unmap_sg(ic->i_cm_id->device, &recv->r_frag->f_sg, 1, DMA_FROM_DEVICE);
  rds_ib_frag_free(ic, recv->r_frag);
  recv->r_frag = ((void*)0);
 }
}
