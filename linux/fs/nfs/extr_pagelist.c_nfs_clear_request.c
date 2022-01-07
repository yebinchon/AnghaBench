
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_page {struct nfs_lock_context* wb_lock_context; struct page* wb_page; } ;
struct nfs_open_context {int dentry; int flags; } ;
struct nfs_lock_context {struct nfs_open_context* open_context; int io_count; } ;
struct TYPE_2__ {int uoc_rpcwaitq; } ;


 int NFS_CONTEXT_UNLOCK ;
 TYPE_1__* NFS_SERVER (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int d_inode (int ) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int put_page (struct page*) ;
 int rpc_wake_up (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_var (int *) ;

__attribute__((used)) static void nfs_clear_request(struct nfs_page *req)
{
 struct page *page = req->wb_page;
 struct nfs_lock_context *l_ctx = req->wb_lock_context;
 struct nfs_open_context *ctx;

 if (page != ((void*)0)) {
  put_page(page);
  req->wb_page = ((void*)0);
 }
 if (l_ctx != ((void*)0)) {
  if (atomic_dec_and_test(&l_ctx->io_count)) {
   wake_up_var(&l_ctx->io_count);
   ctx = l_ctx->open_context;
   if (test_bit(NFS_CONTEXT_UNLOCK, &ctx->flags))
    rpc_wake_up(&NFS_SERVER(d_inode(ctx->dentry))->uoc_rpcwaitq);
  }
  nfs_put_lock_context(l_ctx);
  req->wb_lock_context = ((void*)0);
 }
}
