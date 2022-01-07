
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_refcount_tree {int rf_blkno; } ;
struct ocfs2_caching_info {int dummy; } ;


 struct ocfs2_refcount_tree* cache_info_to_refcount (struct ocfs2_caching_info*) ;

__attribute__((used)) static u64 ocfs2_refcount_cache_owner(struct ocfs2_caching_info *ci)
{
 struct ocfs2_refcount_tree *rf = cache_info_to_refcount(ci);

 return rf->rf_blkno;
}
