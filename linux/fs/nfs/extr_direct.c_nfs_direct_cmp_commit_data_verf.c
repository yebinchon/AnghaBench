
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_writeverf {scalar_t__ committed; } ;
struct nfs_direct_req {int dummy; } ;
struct nfs_commit_data {int verf; int ds_commit_index; int ds_clp; } ;


 int nfs_direct_cmp_verf (struct nfs_writeverf*,int *) ;
 struct nfs_writeverf* nfs_direct_select_verf (struct nfs_direct_req*,int ,int ) ;

__attribute__((used)) static int nfs_direct_cmp_commit_data_verf(struct nfs_direct_req *dreq,
        struct nfs_commit_data *data)
{
 struct nfs_writeverf *verfp;

 verfp = nfs_direct_select_verf(dreq, data->ds_clp,
      data->ds_commit_index);


 if (verfp->committed < 0)
  return 1;

 return nfs_direct_cmp_verf(verfp, &data->verf);
}
