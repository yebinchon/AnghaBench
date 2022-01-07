
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int QNX6_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int qnx6_inode_cachep ;

__attribute__((used)) static void qnx6_free_inode(struct inode *inode)
{
 kmem_cache_free(qnx6_inode_cachep, QNX6_I(inode));
}
