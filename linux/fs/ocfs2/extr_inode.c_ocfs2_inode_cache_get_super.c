
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;
struct ocfs2_inode_info {TYPE_1__ vfs_inode; } ;
struct ocfs2_caching_info {int dummy; } ;


 struct ocfs2_inode_info* cache_info_to_inode (struct ocfs2_caching_info*) ;

__attribute__((used)) static struct super_block *ocfs2_inode_cache_get_super(struct ocfs2_caching_info *ci)
{
 struct ocfs2_inode_info *oi = cache_info_to_inode(ci);

 return oi->vfs_inode.i_sb;
}
