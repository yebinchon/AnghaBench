
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ci_array; } ;
struct ocfs2_caching_info {int ci_num_cached; TYPE_1__ ci_cache; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int OCFS2_CACHE_INFO_MAX_ARRAY ;
 int memmove (int *,int *,int) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int trace_ocfs2_remove_metadata_array (unsigned long long,int,int) ;

__attribute__((used)) static void ocfs2_remove_metadata_array(struct ocfs2_caching_info *ci,
     int index)
{
 sector_t *array = ci->ci_cache.ci_array;
 int bytes;

 BUG_ON(index < 0 || index >= OCFS2_CACHE_INFO_MAX_ARRAY);
 BUG_ON(index >= ci->ci_num_cached);
 BUG_ON(!ci->ci_num_cached);

 trace_ocfs2_remove_metadata_array(
  (unsigned long long)ocfs2_metadata_cache_owner(ci),
  index, ci->ci_num_cached);

 ci->ci_num_cached--;



 if (ci->ci_num_cached && index < ci->ci_num_cached) {
  bytes = sizeof(sector_t) * (ci->ci_num_cached - index);
  memmove(&array[index], &array[index + 1], bytes);
 }
}
