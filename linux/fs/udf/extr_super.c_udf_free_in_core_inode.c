
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int UDF_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int udf_inode_cachep ;

__attribute__((used)) static void udf_free_in_core_inode(struct inode *inode)
{
 kmem_cache_free(udf_inode_cachep, UDF_I(inode));
}
