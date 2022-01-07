
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int F2FS_I (struct inode*) ;
 int f2fs_inode_cachep ;
 int fscrypt_free_inode (struct inode*) ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void f2fs_free_inode(struct inode *inode)
{
 fscrypt_free_inode(inode);
 kmem_cache_free(f2fs_inode_cachep, F2FS_I(inode));
}
