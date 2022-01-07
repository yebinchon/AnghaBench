
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_range {int length; int offset; int iomode; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_3__ {int * lg_res; } ;
struct TYPE_4__ {int fmode; int * lg_args; } ;
struct nfs4_opendata {TYPE_1__ o_res; TYPE_2__ o_arg; struct nfs4_layoutget* lgp; } ;
struct nfs4_layoutget {int res; int args; } ;


 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int IOMODE_READ ;
 int IOMODE_RW ;
 int NFS4_MAX_UINT64 ;
 int current_stateid ;
 struct nfs4_layoutget* pnfs_alloc_init_layoutget_args (int *,struct nfs_open_context*,int *,struct pnfs_layout_range*,int ) ;

__attribute__((used)) static void _lgopen_prepare_floating(struct nfs4_opendata *data,
         struct nfs_open_context *ctx)
{
 struct pnfs_layout_range rng = {
  .iomode = (data->o_arg.fmode & FMODE_WRITE) ?
     IOMODE_RW: IOMODE_READ,
  .offset = 0,
  .length = NFS4_MAX_UINT64,
 };
 struct nfs4_layoutget *lgp;

 lgp = pnfs_alloc_init_layoutget_args(((void*)0), ctx, &current_stateid,
          &rng, GFP_KERNEL);
 if (!lgp)
  return;
 data->lgp = lgp;
 data->o_arg.lg_args = &lgp->args;
 data->o_res.lg_res = &lgp->res;
}
