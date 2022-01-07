
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_segment {TYPE_1__* pls_layout; } ;
struct TYPE_4__ {scalar_t__ inode; } ;
struct nfs42_layouterror_data {scalar_t__ inode; scalar_t__ lseg; TYPE_2__ args; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct inode* plh_inode; } ;


 int kfree (struct nfs42_layouterror_data*) ;
 struct nfs42_layouterror_data* kzalloc (int,int ) ;
 scalar_t__ nfs_igrab_and_active (struct inode*) ;
 int nfs_iput_and_deactive (scalar_t__) ;
 scalar_t__ pnfs_get_lseg (struct pnfs_layout_segment*) ;

__attribute__((used)) static struct nfs42_layouterror_data *
nfs42_alloc_layouterror_data(struct pnfs_layout_segment *lseg, gfp_t gfp_flags)
{
 struct nfs42_layouterror_data *data;
 struct inode *inode = lseg->pls_layout->plh_inode;

 data = kzalloc(sizeof(*data), gfp_flags);
 if (data) {
  data->args.inode = data->inode = nfs_igrab_and_active(inode);
  if (data->inode) {
   data->lseg = pnfs_get_lseg(lseg);
   if (data->lseg)
    return data;
   nfs_iput_and_deactive(data->inode);
  }
  kfree(data);
 }
 return ((void*)0);
}
