
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int fs_id; int khandle; } ;
struct orangefs_inode_s {struct inode vfs_inode; int * link_target; scalar_t__ last_failed_block_index_read; TYPE_1__ refn; } ;


 int GFP_KERNEL ;
 int GOSSIP_SUPER_DEBUG ;
 int ORANGEFS_FS_ID_NULL ;
 int gossip_debug (int ,char*,struct inode*) ;
 struct orangefs_inode_s* kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;
 int orangefs_inode_cache ;

__attribute__((used)) static struct inode *orangefs_alloc_inode(struct super_block *sb)
{
 struct orangefs_inode_s *orangefs_inode;

 orangefs_inode = kmem_cache_alloc(orangefs_inode_cache, GFP_KERNEL);
 if (!orangefs_inode)
  return ((void*)0);





 memset(&orangefs_inode->refn.khandle, 0, 16);
 orangefs_inode->refn.fs_id = ORANGEFS_FS_ID_NULL;
 orangefs_inode->last_failed_block_index_read = 0;
 memset(orangefs_inode->link_target, 0, sizeof(orangefs_inode->link_target));

 gossip_debug(GOSSIP_SUPER_DEBUG,
       "orangefs_alloc_inode: allocated %p\n",
       &orangefs_inode->vfs_inode);
 return &orangefs_inode->vfs_inode;
}
