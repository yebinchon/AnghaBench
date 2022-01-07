
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_pageio_descriptor {TYPE_1__* pg_ops; } ;
struct nfs_page {scalar_t__ wb_bytes; scalar_t__ wb_page; scalar_t__ wb_pgbase; int wb_lock_context; } ;
struct file_lock_context {int flc_flock; int flc_posix; } ;
struct TYPE_8__ {struct file_lock_context* i_flctx; } ;
struct TYPE_7__ {int dentry; } ;
struct TYPE_6__ {size_t (* pg_test ) (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;} ;


 scalar_t__ PAGE_SIZE ;
 int WARN_ON_ONCE (int) ;
 TYPE_5__* d_inode (int ) ;
 scalar_t__ list_empty_careful (int *) ;
 int nfs_match_lock_context (int ,int ) ;
 int nfs_match_open_context (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* nfs_req_openctx (struct nfs_page*) ;
 scalar_t__ req_offset (struct nfs_page*) ;
 size_t stub1 (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;

__attribute__((used)) static bool nfs_can_coalesce_requests(struct nfs_page *prev,
          struct nfs_page *req,
          struct nfs_pageio_descriptor *pgio)
{
 size_t size;
 struct file_lock_context *flctx;

 if (prev) {
  if (!nfs_match_open_context(nfs_req_openctx(req), nfs_req_openctx(prev)))
   return 0;
  flctx = d_inode(nfs_req_openctx(req)->dentry)->i_flctx;
  if (flctx != ((void*)0) &&
      !(list_empty_careful(&flctx->flc_posix) &&
        list_empty_careful(&flctx->flc_flock)) &&
      !nfs_match_lock_context(req->wb_lock_context,
         prev->wb_lock_context))
   return 0;
  if (req_offset(req) != req_offset(prev) + prev->wb_bytes)
   return 0;
  if (req->wb_page == prev->wb_page) {
   if (req->wb_pgbase != prev->wb_pgbase + prev->wb_bytes)
    return 0;
  } else {
   if (req->wb_pgbase != 0 ||
       prev->wb_pgbase + prev->wb_bytes != PAGE_SIZE)
    return 0;
  }
 }
 size = pgio->pg_ops->pg_test(pgio, prev, req);
 WARN_ON_ONCE(size > req->wb_bytes);
 if (size && size < req->wb_bytes)
  req->wb_bytes = size;
 return size > 0;
}
