
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_writeverf {scalar_t__ committed; } ;
struct nfs_pgio_header {int verf; int ds_commit_idx; int ds_clp; } ;
struct nfs_direct_req {int dummy; } ;


 int nfs_direct_cmp_verf (struct nfs_writeverf*,int *) ;
 struct nfs_writeverf* nfs_direct_select_verf (struct nfs_direct_req*,int ,int ) ;
 int nfs_direct_set_hdr_verf (struct nfs_direct_req*,struct nfs_pgio_header*) ;

__attribute__((used)) static int nfs_direct_set_or_cmp_hdr_verf(struct nfs_direct_req *dreq,
       struct nfs_pgio_header *hdr)
{
 struct nfs_writeverf *verfp;

 verfp = nfs_direct_select_verf(dreq, hdr->ds_clp, hdr->ds_commit_idx);
 if (verfp->committed < 0) {
  nfs_direct_set_hdr_verf(dreq, hdr);
  return 0;
 }
 return nfs_direct_cmp_verf(verfp, &hdr->verf);
}
