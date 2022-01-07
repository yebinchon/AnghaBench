
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_sock {int dummy; } ;
struct TYPE_6__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_5__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_4__ {unsigned long op_nents; int * op_sg; int * op_mmp_znotifier; } ;
struct rds_message {TYPE_3__ atomic; TYPE_2__ rdma; TYPE_1__ data; int m_rs_lock; struct rds_sock* m_rs; int m_flags; } ;


 int RDS_MSG_PAGEVEC ;
 int __free_page (int ) ;
 int put_page (int ) ;
 int rds_atomic_free_op (TYPE_3__*) ;
 int rds_mr_put (scalar_t__) ;
 int rds_rdma_free_op (TYPE_2__*) ;
 int rds_rm_zerocopy_callback (struct rds_sock*,int *) ;
 int rds_rs_to_sk (struct rds_sock*) ;
 int rds_wake_sk_sleep (struct rds_sock*) ;
 int sg_page (int *) ;
 int sock_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void rds_message_purge(struct rds_message *rm)
{
 unsigned long i, flags;
 bool zcopy = 0;

 if (unlikely(test_bit(RDS_MSG_PAGEVEC, &rm->m_flags)))
  return;

 spin_lock_irqsave(&rm->m_rs_lock, flags);
 if (rm->m_rs) {
  struct rds_sock *rs = rm->m_rs;

  if (rm->data.op_mmp_znotifier) {
   zcopy = 1;
   rds_rm_zerocopy_callback(rs, rm->data.op_mmp_znotifier);
   rds_wake_sk_sleep(rs);
   rm->data.op_mmp_znotifier = ((void*)0);
  }
  sock_put(rds_rs_to_sk(rs));
  rm->m_rs = ((void*)0);
 }
 spin_unlock_irqrestore(&rm->m_rs_lock, flags);

 for (i = 0; i < rm->data.op_nents; i++) {

  if (!zcopy)
   __free_page(sg_page(&rm->data.op_sg[i]));
  else
   put_page(sg_page(&rm->data.op_sg[i]));
 }
 rm->data.op_nents = 0;

 if (rm->rdma.op_active)
  rds_rdma_free_op(&rm->rdma);
 if (rm->rdma.op_rdma_mr)
  rds_mr_put(rm->rdma.op_rdma_mr);

 if (rm->atomic.op_active)
  rds_atomic_free_op(&rm->atomic);
 if (rm->atomic.op_rdma_mr)
  rds_mr_put(rm->atomic.op_rdma_mr);
}
