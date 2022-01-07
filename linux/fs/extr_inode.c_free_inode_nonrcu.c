
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_cachep ;
 int kmem_cache_free (int ,struct inode*) ;

void free_inode_nonrcu(struct inode *inode)
{
 kmem_cache_free(inode_cachep, inode);
}
