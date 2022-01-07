
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rds_sock {int rs_rdma_lock; int rs_rdma_keys; } ;
struct rds_mr {int r_trans_private; TYPE_1__* r_trans; int r_refcount; } ;
struct TYPE_4__ {struct rds_mr* op_rdma_mr; } ;
struct rds_message {scalar_t__ m_rdma_cookie; TYPE_2__ rdma; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;
typedef int rds_rdma_cookie_t ;
struct TYPE_3__ {int (* sync_mr ) (int ,int ) ;} ;


 int CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int memcpy (scalar_t__*,int ,int) ;
 struct rds_mr* rds_mr_tree_walk (int *,int ,int *) ;
 int rds_rdma_cookie_key (scalar_t__) ;
 int refcount_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;

int rds_cmsg_rdma_dest(struct rds_sock *rs, struct rds_message *rm,
     struct cmsghdr *cmsg)
{
 unsigned long flags;
 struct rds_mr *mr;
 u32 r_key;
 int err = 0;

 if (cmsg->cmsg_len < CMSG_LEN(sizeof(rds_rdma_cookie_t)) ||
     rm->m_rdma_cookie != 0)
  return -EINVAL;

 memcpy(&rm->m_rdma_cookie, CMSG_DATA(cmsg), sizeof(rm->m_rdma_cookie));






 r_key = rds_rdma_cookie_key(rm->m_rdma_cookie);

 spin_lock_irqsave(&rs->rs_rdma_lock, flags);
 mr = rds_mr_tree_walk(&rs->rs_rdma_keys, r_key, ((void*)0));
 if (!mr)
  err = -EINVAL;
 else
  refcount_inc(&mr->r_refcount);
 spin_unlock_irqrestore(&rs->rs_rdma_lock, flags);

 if (mr) {
  mr->r_trans->sync_mr(mr->r_trans_private, DMA_TO_DEVICE);
  rm->rdma.op_rdma_mr = mr;
 }
 return err;
}
