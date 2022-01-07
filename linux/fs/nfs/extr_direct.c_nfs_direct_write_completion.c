
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct nfs_pgio_header {scalar_t__ good_bytes; int (* release ) (struct nfs_pgio_header*) ;int ds_commit_idx; int lseg; TYPE_1__ pages; int flags; struct nfs_direct_req* dreq; } ;
struct nfs_page {int wb_kref; } ;
struct nfs_direct_req {scalar_t__ flags; int lock; } ;
struct nfs_commit_info {int dummy; } ;


 int NFS_IOHDR_REDO ;
 scalar_t__ NFS_ODIRECT_DO_COMMIT ;
 scalar_t__ NFS_ODIRECT_RESCHED_WRITES ;
 int kref_get (int *) ;
 int list_empty (TYPE_1__*) ;
 int nfs_direct_count_bytes (struct nfs_direct_req*,struct nfs_pgio_header*) ;
 int nfs_direct_set_hdr_verf (struct nfs_direct_req*,struct nfs_pgio_header*) ;
 scalar_t__ nfs_direct_set_or_cmp_hdr_verf (struct nfs_direct_req*,struct nfs_pgio_header*) ;
 int nfs_direct_write_complete (struct nfs_direct_req*) ;
 int nfs_init_cinfo_from_dreq (struct nfs_commit_info*,struct nfs_direct_req*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mark_request_commit (struct nfs_page*,int ,struct nfs_commit_info*,int ) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 scalar_t__ nfs_write_need_commit (struct nfs_pgio_header*) ;
 scalar_t__ put_dreq (struct nfs_direct_req*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs_direct_write_completion(struct nfs_pgio_header *hdr)
{
 struct nfs_direct_req *dreq = hdr->dreq;
 struct nfs_commit_info cinfo;
 bool request_commit = 0;
 struct nfs_page *req = nfs_list_entry(hdr->pages.next);

 nfs_init_cinfo_from_dreq(&cinfo, dreq);

 spin_lock(&dreq->lock);
 if (test_bit(NFS_IOHDR_REDO, &hdr->flags)) {
  spin_unlock(&dreq->lock);
  goto out_put;
 }

 nfs_direct_count_bytes(dreq, hdr);
 if (hdr->good_bytes != 0) {
  if (nfs_write_need_commit(hdr)) {
   if (dreq->flags == NFS_ODIRECT_RESCHED_WRITES)
    request_commit = 1;
   else if (dreq->flags == 0) {
    nfs_direct_set_hdr_verf(dreq, hdr);
    request_commit = 1;
    dreq->flags = NFS_ODIRECT_DO_COMMIT;
   } else if (dreq->flags == NFS_ODIRECT_DO_COMMIT) {
    request_commit = 1;
    if (nfs_direct_set_or_cmp_hdr_verf(dreq, hdr))
     dreq->flags =
      NFS_ODIRECT_RESCHED_WRITES;
   }
  }
 }
 spin_unlock(&dreq->lock);

 while (!list_empty(&hdr->pages)) {

  req = nfs_list_entry(hdr->pages.next);
  nfs_list_remove_request(req);
  if (request_commit) {
   kref_get(&req->wb_kref);
   nfs_mark_request_commit(req, hdr->lseg, &cinfo,
    hdr->ds_commit_idx);
  }
  nfs_unlock_and_release_request(req);
 }

out_put:
 if (put_dreq(dreq))
  nfs_direct_write_complete(dreq);
 hdr->release(hdr);
}
