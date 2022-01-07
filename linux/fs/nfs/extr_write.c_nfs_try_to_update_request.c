
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {unsigned int wb_offset; unsigned int wb_bytes; unsigned int wb_pgbase; scalar_t__ wb_nio; } ;
struct inode {int dummy; } ;


 struct nfs_page* ERR_PTR (int) ;
 scalar_t__ IS_ERR_OR_NULL (struct nfs_page*) ;
 struct nfs_page* nfs_lock_and_join_requests (struct page*) ;
 int nfs_mark_request_dirty (struct nfs_page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 int nfs_wb_page (struct inode*,struct page*) ;

__attribute__((used)) static struct nfs_page *nfs_try_to_update_request(struct inode *inode,
  struct page *page,
  unsigned int offset,
  unsigned int bytes)
{
 struct nfs_page *req;
 unsigned int rqend;
 unsigned int end;
 int error;

 end = offset + bytes;

 req = nfs_lock_and_join_requests(page);
 if (IS_ERR_OR_NULL(req))
  return req;

 rqend = req->wb_offset + req->wb_bytes;






 if (offset > rqend || end < req->wb_offset)
  goto out_flushme;


 if (offset < req->wb_offset) {
  req->wb_offset = offset;
  req->wb_pgbase = offset;
 }
 if (end > rqend)
  req->wb_bytes = end - req->wb_offset;
 else
  req->wb_bytes = rqend - req->wb_offset;
 req->wb_nio = 0;
 return req;
out_flushme:





 nfs_mark_request_dirty(req);
 nfs_unlock_and_release_request(req);
 error = nfs_wb_page(inode, page);
 return (error < 0) ? ERR_PTR(error) : ((void*)0);
}
