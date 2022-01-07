
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int error; int (* release ) (struct nfs_pgio_header*) ;int flags; TYPE_2__ pages; } ;
struct nfs_page {unsigned long wb_pgbase; unsigned long wb_bytes; struct page* wb_page; } ;
struct TYPE_3__ {int error; } ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 int NFS_IOHDR_REDO ;
 int WARN_ON (int) ;
 int list_empty (TYPE_2__*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_page_group_set_uptodate (struct nfs_page*) ;
 int nfs_readpage_release (struct nfs_page*,int) ;
 TYPE_1__* nfs_req_openctx (struct nfs_page*) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;
 int xchg (int *,int) ;
 int zero_user_segment (struct page*,unsigned long,unsigned long) ;

__attribute__((used)) static void nfs_read_completion(struct nfs_pgio_header *hdr)
{
 unsigned long bytes = 0;
 int error;

 if (test_bit(NFS_IOHDR_REDO, &hdr->flags))
  goto out;
 while (!list_empty(&hdr->pages)) {
  struct nfs_page *req = nfs_list_entry(hdr->pages.next);
  struct page *page = req->wb_page;
  unsigned long start = req->wb_pgbase;
  unsigned long end = req->wb_pgbase + req->wb_bytes;

  if (test_bit(NFS_IOHDR_EOF, &hdr->flags)) {



   if (bytes > hdr->good_bytes) {


    zero_user_segment(page, start, end);

   } else if (hdr->good_bytes - bytes < req->wb_bytes) {


    start += hdr->good_bytes - bytes;
    WARN_ON(start < req->wb_pgbase);
    zero_user_segment(page, start, end);
   }
  }
  error = 0;
  bytes += req->wb_bytes;
  if (test_bit(NFS_IOHDR_ERROR, &hdr->flags)) {
   if (bytes <= hdr->good_bytes)
    nfs_page_group_set_uptodate(req);
   else {
    error = hdr->error;
    xchg(&nfs_req_openctx(req)->error, error);
   }
  } else
   nfs_page_group_set_uptodate(req);
  nfs_list_remove_request(req);
  nfs_readpage_release(req, error);
 }
out:
 hdr->release(hdr);
}
