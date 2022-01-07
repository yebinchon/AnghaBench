
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_refcount_tree {struct super_block* rf_sb; } ;
struct ocfs2_caching_info {int dummy; } ;


 struct ocfs2_refcount_tree* cache_info_to_refcount (struct ocfs2_caching_info*) ;

__attribute__((used)) static struct super_block *
ocfs2_refcount_cache_get_super(struct ocfs2_caching_info *ci)
{
 struct ocfs2_refcount_tree *rf = cache_info_to_refcount(ci);

 return rf->rf_sb;
}
