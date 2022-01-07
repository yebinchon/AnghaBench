
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {scalar_t__ ci_last_trans; scalar_t__ ci_created_trans; scalar_t__ ci_num_cached; int ci_flags; } ;


 int OCFS2_CACHE_FL_INLINE ;

__attribute__((used)) static void ocfs2_metadata_cache_reset(struct ocfs2_caching_info *ci,
           int clear)
{
 ci->ci_flags |= OCFS2_CACHE_FL_INLINE;
 ci->ci_num_cached = 0;

 if (clear) {
  ci->ci_created_trans = 0;
  ci->ci_last_trans = 0;
 }
}
