
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {void* partitionReferenceNum; void* logicalBlockNum; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_alloc_type; } ;


 int EIO ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ ICBTAG_FLAG_AD_SHORT ;
 scalar_t__ IS_ERR (struct inode*) ;
 TYPE_1__* UDF_I (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* udf_iget_special (struct super_block*,struct kernel_lb_addr*) ;
 int udf_warn (struct super_block*,char*) ;

struct inode *udf_find_metadata_inode_efe(struct super_block *sb,
     u32 meta_file_loc, u32 partition_ref)
{
 struct kernel_lb_addr addr;
 struct inode *metadata_fe;

 addr.logicalBlockNum = meta_file_loc;
 addr.partitionReferenceNum = partition_ref;

 metadata_fe = udf_iget_special(sb, &addr);

 if (IS_ERR(metadata_fe)) {
  udf_warn(sb, "metadata inode efe not found\n");
  return metadata_fe;
 }
 if (UDF_I(metadata_fe)->i_alloc_type != ICBTAG_FLAG_AD_SHORT) {
  udf_warn(sb, "metadata inode efe does not have short allocation descriptors!\n");
  iput(metadata_fe);
  return ERR_PTR(-EIO);
 }

 return metadata_fe;
}
