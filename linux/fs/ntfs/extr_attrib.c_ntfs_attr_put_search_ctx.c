
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ base_ntfs_ino; scalar_t__ ntfs_ino; } ;
typedef TYPE_1__ ntfs_attr_search_ctx ;


 int kmem_cache_free (int ,TYPE_1__*) ;
 int ntfs_attr_ctx_cache ;
 int unmap_extent_mft_record (scalar_t__) ;

void ntfs_attr_put_search_ctx(ntfs_attr_search_ctx *ctx)
{
 if (ctx->base_ntfs_ino && ctx->ntfs_ino != ctx->base_ntfs_ino)
  unmap_extent_mft_record(ctx->ntfs_ino);
 kmem_cache_free(ntfs_attr_ctx_cache, ctx);
 return;
}
