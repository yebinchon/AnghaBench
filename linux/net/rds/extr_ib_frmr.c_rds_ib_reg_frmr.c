
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct rds_ib_frmr {scalar_t__ fr_state; TYPE_2__* mr; } ;
struct TYPE_3__ {struct rds_ib_frmr frmr; } ;
struct rds_ib_mr {int pool; struct rds_ib_device* device; struct rds_ib_connection* ic; TYPE_1__ u; } ;
struct rds_ib_device {int dummy; } ;
struct rds_ib_connection {int dummy; } ;
struct TYPE_4__ {int rkey; } ;


 int EOPNOTSUPP ;
 struct rds_ib_mr* ERR_PTR (int) ;
 scalar_t__ FRMR_IS_FREE ;
 scalar_t__ IS_ERR (struct rds_ib_mr*) ;
 struct rds_ib_mr* rds_ib_alloc_frmr (struct rds_ib_device*,unsigned long) ;
 int rds_ib_free_frmr (struct rds_ib_mr*,int) ;
 int rds_ib_map_frmr (struct rds_ib_device*,int ,struct rds_ib_mr*,struct scatterlist*,unsigned long) ;

struct rds_ib_mr *rds_ib_reg_frmr(struct rds_ib_device *rds_ibdev,
      struct rds_ib_connection *ic,
      struct scatterlist *sg,
      unsigned long nents, u32 *key)
{
 struct rds_ib_mr *ibmr = ((void*)0);
 struct rds_ib_frmr *frmr;
 int ret;

 if (!ic) {

  return ERR_PTR(-EOPNOTSUPP);
 }

 do {
  if (ibmr)
   rds_ib_free_frmr(ibmr, 1);
  ibmr = rds_ib_alloc_frmr(rds_ibdev, nents);
  if (IS_ERR(ibmr))
   return ibmr;
  frmr = &ibmr->u.frmr;
 } while (frmr->fr_state != FRMR_IS_FREE);

 ibmr->ic = ic;
 ibmr->device = rds_ibdev;
 ret = rds_ib_map_frmr(rds_ibdev, ibmr->pool, ibmr, sg, nents);
 if (ret == 0) {
  *key = frmr->mr->rkey;
 } else {
  rds_ib_free_frmr(ibmr, 0);
  ibmr = ERR_PTR(ret);
 }

 return ibmr;
}
