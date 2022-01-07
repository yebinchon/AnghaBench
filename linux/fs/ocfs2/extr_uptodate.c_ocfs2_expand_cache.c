
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_meta_cache_item {int c_block; } ;
struct TYPE_2__ {int ci_tree; int * ci_array; } ;
struct ocfs2_caching_info {int ci_num_cached; int ci_flags; TYPE_1__ ci_cache; } ;


 int OCFS2_CACHE_FL_INLINE ;
 int OCFS2_CACHE_INFO_MAX_ARRAY ;
 int RB_ROOT ;
 int __ocfs2_insert_cache_tree (struct ocfs2_caching_info*,struct ocfs2_meta_cache_item*) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,...) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int trace_ocfs2_expand_cache (unsigned long long,int,int) ;

__attribute__((used)) static void ocfs2_expand_cache(struct ocfs2_caching_info *ci,
          struct ocfs2_meta_cache_item **tree)
{
 int i;

 mlog_bug_on_msg(ci->ci_num_cached != OCFS2_CACHE_INFO_MAX_ARRAY,
   "Owner %llu, num cached = %u, should be %u\n",
   (unsigned long long)ocfs2_metadata_cache_owner(ci),
   ci->ci_num_cached, OCFS2_CACHE_INFO_MAX_ARRAY);
 mlog_bug_on_msg(!(ci->ci_flags & OCFS2_CACHE_FL_INLINE),
   "Owner %llu not marked as inline anymore!\n",
   (unsigned long long)ocfs2_metadata_cache_owner(ci));



 for (i = 0; i < OCFS2_CACHE_INFO_MAX_ARRAY; i++)
  tree[i]->c_block = ci->ci_cache.ci_array[i];

 ci->ci_flags &= ~OCFS2_CACHE_FL_INLINE;
 ci->ci_cache.ci_tree = RB_ROOT;

 ci->ci_num_cached = 0;

 for (i = 0; i < OCFS2_CACHE_INFO_MAX_ARRAY; i++) {
  __ocfs2_insert_cache_tree(ci, tree[i]);
  tree[i] = ((void*)0);
 }

 trace_ocfs2_expand_cache(
  (unsigned long long)ocfs2_metadata_cache_owner(ci),
  ci->ci_flags, ci->ci_num_cached);
}
