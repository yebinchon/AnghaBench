
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {struct ocfs2_caching_info* et_ci; } ;
struct ocfs2_cow_context {int (* cow_duplicate_clusters ) (int *,int ,int ,int ,int ,int ) ;int dealloc; int meta_ac; TYPE_1__ data_et; int inode; } ;
struct ocfs2_caching_info {int dummy; } ;
typedef int handle_t ;


 unsigned int OCFS2_EXT_UNWRITTEN ;
 int mlog_errno (int) ;
 int ocfs2_clear_ext_refcount (int *,TYPE_1__*,int ,int ,int ,unsigned int,int ,int *) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int stub1 (int *,int ,int ,int ,int ,int ) ;
 int trace_ocfs2_replace_clusters (unsigned long long,int ,int ,int ,int ,unsigned int) ;

__attribute__((used)) static int ocfs2_replace_clusters(handle_t *handle,
      struct ocfs2_cow_context *context,
      u32 cpos, u32 old,
      u32 new, u32 len,
      unsigned int ext_flags)
{
 int ret;
 struct ocfs2_caching_info *ci = context->data_et.et_ci;
 u64 ino = ocfs2_metadata_cache_owner(ci);

 trace_ocfs2_replace_clusters((unsigned long long)ino,
         cpos, old, new, len, ext_flags);


 if (!(ext_flags & OCFS2_EXT_UNWRITTEN)) {
  ret = context->cow_duplicate_clusters(handle, context->inode,
            cpos, old, new, len);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_clear_ext_refcount(handle, &context->data_et,
           cpos, new, len, ext_flags,
           context->meta_ac, &context->dealloc);
 if (ret)
  mlog_errno(ret);
out:
 return ret;
}
