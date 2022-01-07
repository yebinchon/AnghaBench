
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NILFS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int nilfs_inode_cachep ;
 scalar_t__ nilfs_is_metadata_file_inode (struct inode*) ;
 int nilfs_mdt_destroy (struct inode*) ;

__attribute__((used)) static void nilfs_free_inode(struct inode *inode)
{
 if (nilfs_is_metadata_file_inode(inode))
  nilfs_mdt_destroy(inode);

 kmem_cache_free(nilfs_inode_cachep, NILFS_I(inode));
}
