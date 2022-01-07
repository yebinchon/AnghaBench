
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int wb_page; } ;
struct nfs_commit_info {int dreq; } ;
struct list_head {int next; } ;


 int list_empty (struct list_head*) ;
 int nfs_clear_page_commit (int ) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mark_request_commit (struct nfs_page*,struct pnfs_layout_segment*,struct nfs_commit_info*,int ) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;

void nfs_retry_commit(struct list_head *page_list,
        struct pnfs_layout_segment *lseg,
        struct nfs_commit_info *cinfo,
        u32 ds_commit_idx)
{
 struct nfs_page *req;

 while (!list_empty(page_list)) {
  req = nfs_list_entry(page_list->next);
  nfs_list_remove_request(req);
  nfs_mark_request_commit(req, lseg, cinfo, ds_commit_idx);
  if (!cinfo->dreq)
   nfs_clear_page_commit(req->wb_page);
  nfs_unlock_and_release_request(req);
 }
}
