
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_data; } ;
struct udf_inode_info {TYPE_1__ i_ext; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int kmalloc (size_t,int ) ;

__attribute__((used)) static int udf_alloc_i_data(struct inode *inode, size_t size)
{
 struct udf_inode_info *iinfo = UDF_I(inode);
 iinfo->i_ext.i_data = kmalloc(size, GFP_KERNEL);
 if (!iinfo->i_ext.i_data)
  return -ENOMEM;
 return 0;
}
