
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;
struct nfs4_filelayout_segment {scalar_t__ commit_through_mds; } ;


 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 int nfs4_fl_calc_j_index (struct pnfs_layout_segment*,int ) ;
 int nfs_request_add_commit_list (struct nfs_page*,struct nfs_commit_info*) ;
 int pnfs_layout_mark_request_commit (struct nfs_page*,struct pnfs_layout_segment*,struct nfs_commit_info*,int ) ;
 int req_offset (struct nfs_page*) ;
 int select_bucket_index (struct nfs4_filelayout_segment*,int ) ;

__attribute__((used)) static void
filelayout_mark_request_commit(struct nfs_page *req,
          struct pnfs_layout_segment *lseg,
          struct nfs_commit_info *cinfo,
          u32 ds_commit_idx)

{
 struct nfs4_filelayout_segment *fl = FILELAYOUT_LSEG(lseg);
 u32 i, j;

 if (fl->commit_through_mds) {
  nfs_request_add_commit_list(req, cinfo);
 } else {






  j = nfs4_fl_calc_j_index(lseg, req_offset(req));
  i = select_bucket_index(fl, j);
  pnfs_layout_mark_request_commit(req, lseg, cinfo, i);
 }
}
