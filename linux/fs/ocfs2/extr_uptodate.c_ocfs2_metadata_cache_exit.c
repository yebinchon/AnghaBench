
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;


 int ocfs2_metadata_cache_purge (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_reset (struct ocfs2_caching_info*,int) ;

void ocfs2_metadata_cache_exit(struct ocfs2_caching_info *ci)
{
 ocfs2_metadata_cache_purge(ci);
 ocfs2_metadata_cache_reset(ci, 1);
}
