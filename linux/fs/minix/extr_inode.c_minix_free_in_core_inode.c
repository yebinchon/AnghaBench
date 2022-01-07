
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int kmem_cache_free (int ,int ) ;
 int minix_i (struct inode*) ;
 int minix_inode_cachep ;

__attribute__((used)) static void minix_free_in_core_inode(struct inode *inode)
{
 kmem_cache_free(minix_inode_cachep, minix_i(inode));
}
