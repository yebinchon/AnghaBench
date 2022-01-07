
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int kmem_cache_free (int ,int ) ;
 int qnx4_i (struct inode*) ;
 int qnx4_inode_cachep ;

__attribute__((used)) static void qnx4_free_inode(struct inode *inode)
{
 kmem_cache_free(qnx4_inode_cachep, qnx4_i(inode));
}
