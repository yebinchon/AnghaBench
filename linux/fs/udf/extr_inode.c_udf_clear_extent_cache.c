
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_inode_info {int i_extent_cache_lock; } ;
struct inode {int dummy; } ;


 struct udf_inode_info* UDF_I (struct inode*) ;
 int __udf_clear_extent_cache (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void udf_clear_extent_cache(struct inode *inode)
{
 struct udf_inode_info *iinfo = UDF_I(inode);

 spin_lock(&iinfo->i_extent_cache_lock);
 __udf_clear_extent_cache(inode);
 spin_unlock(&iinfo->i_extent_cache_lock);
}
