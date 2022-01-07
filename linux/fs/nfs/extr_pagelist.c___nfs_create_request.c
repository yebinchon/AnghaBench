
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {unsigned int wb_offset; unsigned int wb_pgbase; unsigned int wb_bytes; scalar_t__ wb_nio; int wb_kref; int wb_index; struct page* wb_page; struct nfs_lock_context* wb_lock_context; } ;
struct nfs_open_context {int flags; } ;
struct nfs_lock_context {int io_count; int count; struct nfs_open_context* open_context; } ;


 int EBADF ;
 int ENOMEM ;
 struct nfs_page* ERR_PTR (int ) ;
 int NFS_CONTEXT_BAD ;
 int atomic_inc (int *) ;
 int get_page (struct page*) ;
 int kref_init (int *) ;
 struct nfs_page* nfs_page_alloc () ;
 int page_index (struct page*) ;
 int refcount_inc (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct nfs_page *
__nfs_create_request(struct nfs_lock_context *l_ctx, struct page *page,
     unsigned int pgbase, unsigned int offset,
     unsigned int count)
{
 struct nfs_page *req;
 struct nfs_open_context *ctx = l_ctx->open_context;

 if (test_bit(NFS_CONTEXT_BAD, &ctx->flags))
  return ERR_PTR(-EBADF);

 req = nfs_page_alloc();
 if (req == ((void*)0))
  return ERR_PTR(-ENOMEM);

 req->wb_lock_context = l_ctx;
 refcount_inc(&l_ctx->count);
 atomic_inc(&l_ctx->io_count);




 req->wb_page = page;
 if (page) {
  req->wb_index = page_index(page);
  get_page(page);
 }
 req->wb_offset = offset;
 req->wb_pgbase = pgbase;
 req->wb_bytes = count;
 kref_init(&req->wb_kref);
 req->wb_nio = 0;
 return req;
}
