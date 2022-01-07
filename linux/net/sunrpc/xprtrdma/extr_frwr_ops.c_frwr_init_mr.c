
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_2__ {int fr_linv_done; struct ib_mr* fr_mr; } ;
struct rpcrdma_mr {struct scatterlist* mr_sg; TYPE_1__ frwr; int mr_recycle; int mr_list; int mr_dir; } ;
struct rpcrdma_ia {unsigned int ri_max_frwr_depth; int ri_mrtype; int ri_pd; } ;
struct ib_mr {int dummy; } ;


 int DMA_NONE ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct ib_mr*) ;
 int PTR_ERR (struct ib_mr*) ;
 int frwr_mr_recycle_worker ;
 struct ib_mr* ib_alloc_mr (int ,int ,unsigned int) ;
 int ib_dereg_mr (struct ib_mr*) ;
 int init_completion (int *) ;
 struct scatterlist* kcalloc (unsigned int,int,int ) ;
 int sg_init_table (struct scatterlist*,unsigned int) ;
 int trace_xprtrdma_frwr_alloc (struct rpcrdma_mr*,int) ;

int frwr_init_mr(struct rpcrdma_ia *ia, struct rpcrdma_mr *mr)
{
 unsigned int depth = ia->ri_max_frwr_depth;
 struct scatterlist *sg;
 struct ib_mr *frmr;
 int rc;




 frmr = ib_alloc_mr(ia->ri_pd, ia->ri_mrtype, depth);
 if (IS_ERR(frmr))
  goto out_mr_err;

 sg = kcalloc(depth, sizeof(*sg), GFP_NOFS);
 if (!sg)
  goto out_list_err;

 mr->frwr.fr_mr = frmr;
 mr->mr_dir = DMA_NONE;
 INIT_LIST_HEAD(&mr->mr_list);
 INIT_WORK(&mr->mr_recycle, frwr_mr_recycle_worker);
 init_completion(&mr->frwr.fr_linv_done);

 sg_init_table(sg, depth);
 mr->mr_sg = sg;
 return 0;

out_mr_err:
 rc = PTR_ERR(frmr);
 trace_xprtrdma_frwr_alloc(mr, rc);
 return rc;

out_list_err:
 ib_dereg_mr(frmr);
 return -ENOMEM;
}
