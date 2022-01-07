
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* ci_array; } ;
struct ocfs2_caching_info {size_t ci_num_cached; TYPE_1__ ci_cache; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 size_t OCFS2_CACHE_INFO_MAX_ARRAY ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int trace_ocfs2_append_cache_array (unsigned long long,unsigned long long,size_t) ;

__attribute__((used)) static void ocfs2_append_cache_array(struct ocfs2_caching_info *ci,
         sector_t block)
{
 BUG_ON(ci->ci_num_cached >= OCFS2_CACHE_INFO_MAX_ARRAY);

 trace_ocfs2_append_cache_array(
  (unsigned long long)ocfs2_metadata_cache_owner(ci),
  (unsigned long long)block, ci->ci_num_cached);

 ci->ci_cache.ci_array[ci->ci_num_cached] = block;
 ci->ci_num_cached++;
}
