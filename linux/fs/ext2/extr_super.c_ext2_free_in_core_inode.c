
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EXT2_I (struct inode*) ;
 int ext2_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void ext2_free_in_core_inode(struct inode *inode)
{
 kmem_cache_free(ext2_inode_cachep, EXT2_I(inode));
}
