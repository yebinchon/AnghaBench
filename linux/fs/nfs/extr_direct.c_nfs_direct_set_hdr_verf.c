
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_writeverf {scalar_t__ committed; } ;
struct nfs_pgio_header {int verf; int ds_commit_idx; int ds_clp; } ;
struct nfs_direct_req {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int memcpy (struct nfs_writeverf*,int *,int) ;
 struct nfs_writeverf* nfs_direct_select_verf (struct nfs_direct_req*,int ,int ) ;

__attribute__((used)) static void nfs_direct_set_hdr_verf(struct nfs_direct_req *dreq,
        struct nfs_pgio_header *hdr)
{
 struct nfs_writeverf *verfp;

 verfp = nfs_direct_select_verf(dreq, hdr->ds_clp, hdr->ds_commit_idx);
 WARN_ON_ONCE(verfp->committed >= 0);
 memcpy(verfp, &hdr->verf, sizeof(struct nfs_writeverf));
 WARN_ON_ONCE(verfp->committed < 0);
}
