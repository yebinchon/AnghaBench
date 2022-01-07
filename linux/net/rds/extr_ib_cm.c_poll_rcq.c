
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_ib_connection {int dummy; } ;
struct rds_ib_ack_state {int dummy; } ;
struct TYPE_2__ {int imm_data; } ;
struct ib_wc {TYPE_1__ ex; int byte_len; int status; scalar_t__ wr_id; } ;
struct ib_cq {int dummy; } ;


 int RDS_IB_WC_MAX ;
 int be32_to_cpu (int ) ;
 int ib_poll_cq (struct ib_cq*,int ,struct ib_wc*) ;
 int rds_ib_recv_cqe_handler (struct rds_ib_connection*,struct ib_wc*,struct rds_ib_ack_state*) ;
 int rdsdebug (char*,unsigned long long,int ,int ,int ) ;

__attribute__((used)) static void poll_rcq(struct rds_ib_connection *ic, struct ib_cq *cq,
       struct ib_wc *wcs,
       struct rds_ib_ack_state *ack_state)
{
 int nr, i;
 struct ib_wc *wc;

 while ((nr = ib_poll_cq(cq, RDS_IB_WC_MAX, wcs)) > 0) {
  for (i = 0; i < nr; i++) {
   wc = wcs + i;
   rdsdebug("wc wr_id 0x%llx status %u byte_len %u imm_data %u\n",
     (unsigned long long)wc->wr_id, wc->status,
     wc->byte_len, be32_to_cpu(wc->ex.imm_data));

   rds_ib_recv_cqe_handler(ic, wc, ack_state);
  }
 }
}
