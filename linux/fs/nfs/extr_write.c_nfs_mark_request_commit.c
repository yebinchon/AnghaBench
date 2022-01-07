
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;


 int nfs_request_add_commit_list (struct nfs_page*,struct nfs_commit_info*) ;
 scalar_t__ pnfs_mark_request_commit (struct nfs_page*,struct pnfs_layout_segment*,struct nfs_commit_info*,int ) ;

void
nfs_mark_request_commit(struct nfs_page *req, struct pnfs_layout_segment *lseg,
   struct nfs_commit_info *cinfo, u32 ds_commit_idx)
{
 if (pnfs_mark_request_commit(req, lseg, cinfo, ds_commit_idx))
  return;
 nfs_request_add_commit_list(req, cinfo);
}
