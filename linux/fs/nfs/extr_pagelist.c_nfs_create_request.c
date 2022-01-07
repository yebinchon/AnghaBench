
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
typedef struct nfs_page nfs_lock_context ;


 struct nfs_page* ERR_CAST (struct nfs_page*) ;
 scalar_t__ IS_ERR (struct nfs_page*) ;
 struct nfs_page* __nfs_create_request (struct nfs_page*,struct page*,unsigned int,unsigned int,unsigned int) ;
 struct nfs_page* nfs_get_lock_context (struct nfs_open_context*) ;
 int nfs_page_group_init (struct nfs_page*,int *) ;
 int nfs_put_lock_context (struct nfs_page*) ;

struct nfs_page *
nfs_create_request(struct nfs_open_context *ctx, struct page *page,
     unsigned int offset, unsigned int count)
{
 struct nfs_lock_context *l_ctx = nfs_get_lock_context(ctx);
 struct nfs_page *ret;

 if (IS_ERR(l_ctx))
  return ERR_CAST(l_ctx);
 ret = __nfs_create_request(l_ctx, page, offset, offset, count);
 if (!IS_ERR(ret))
  nfs_page_group_init(ret, ((void*)0));
 nfs_put_lock_context(l_ctx);
 return ret;
}
