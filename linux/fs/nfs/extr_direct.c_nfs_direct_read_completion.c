
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int (* release ) (struct nfs_pgio_header*) ;TYPE_1__ pages; int flags; struct nfs_direct_req* dreq; } ;
struct nfs_page {scalar_t__ wb_bytes; struct page* wb_page; } ;
struct nfs_direct_req {scalar_t__ flags; int lock; } ;


 int NFS_IOHDR_REDO ;
 scalar_t__ NFS_ODIRECT_SHOULD_DIRTY ;
 int PageCompound (struct page*) ;
 int list_empty (TYPE_1__*) ;
 int nfs_direct_complete (struct nfs_direct_req*) ;
 int nfs_direct_count_bytes (struct nfs_direct_req*,struct nfs_pgio_header*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_release_request (struct nfs_page*) ;
 scalar_t__ put_dreq (struct nfs_direct_req*) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs_direct_read_completion(struct nfs_pgio_header *hdr)
{
 unsigned long bytes = 0;
 struct nfs_direct_req *dreq = hdr->dreq;

 spin_lock(&dreq->lock);
 if (test_bit(NFS_IOHDR_REDO, &hdr->flags)) {
  spin_unlock(&dreq->lock);
  goto out_put;
 }

 nfs_direct_count_bytes(dreq, hdr);
 spin_unlock(&dreq->lock);

 while (!list_empty(&hdr->pages)) {
  struct nfs_page *req = nfs_list_entry(hdr->pages.next);
  struct page *page = req->wb_page;

  if (!PageCompound(page) && bytes < hdr->good_bytes &&
      (dreq->flags == NFS_ODIRECT_SHOULD_DIRTY))
   set_page_dirty(page);
  bytes += req->wb_bytes;
  nfs_list_remove_request(req);
  nfs_release_request(req);
 }
out_put:
 if (put_dreq(dreq))
  nfs_direct_complete(dreq);
 hdr->release(hdr);
}
