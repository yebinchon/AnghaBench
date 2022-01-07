
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntfs_inode ;
typedef int ntfs_attr_search_ctx ;
typedef int MFT_RECORD ;


 int GFP_NOFS ;
 int * kmem_cache_alloc (int ,int ) ;
 int ntfs_attr_ctx_cache ;
 int ntfs_attr_init_search_ctx (int *,int *,int *) ;

ntfs_attr_search_ctx *ntfs_attr_get_search_ctx(ntfs_inode *ni, MFT_RECORD *mrec)
{
 ntfs_attr_search_ctx *ctx;

 ctx = kmem_cache_alloc(ntfs_attr_ctx_cache, GFP_NOFS);
 if (ctx)
  ntfs_attr_init_search_ctx(ctx, ni, mrec);
 return ctx;
}
