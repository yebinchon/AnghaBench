
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EXT4_I (struct inode*) ;
 int ext4_inode_cachep ;
 int fscrypt_free_inode (struct inode*) ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void ext4_free_in_core_inode(struct inode *inode)
{
 fscrypt_free_inode(inode);
 kmem_cache_free(ext4_inode_cachep, EXT4_I(inode));
}
