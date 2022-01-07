
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct fileSetDesc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int s_partition; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ TAG_IDENT_FSD ;
 TYPE_1__* UDF_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int udf_debug (char*,int,int) ;
 int udf_load_fileset (struct super_block*,struct fileSetDesc*,struct kernel_lb_addr*) ;
 struct buffer_head* udf_read_ptagged (struct super_block*,struct kernel_lb_addr*,int ,scalar_t__*) ;

__attribute__((used)) static int udf_find_fileset(struct super_block *sb,
       struct kernel_lb_addr *fileset,
       struct kernel_lb_addr *root)
{
 struct buffer_head *bh = ((void*)0);
 uint16_t ident;
 int ret;

 if (fileset->logicalBlockNum == 0xFFFFFFFF &&
     fileset->partitionReferenceNum == 0xFFFF)
  return -EINVAL;

 bh = udf_read_ptagged(sb, fileset, 0, &ident);
 if (!bh)
  return -EIO;
 if (ident != TAG_IDENT_FSD) {
  brelse(bh);
  return -EINVAL;
 }

 udf_debug("Fileset at block=%u, partition=%u\n",
    fileset->logicalBlockNum, fileset->partitionReferenceNum);

 UDF_SB(sb)->s_partition = fileset->partitionReferenceNum;
 ret = udf_load_fileset(sb, (struct fileSetDesc *)bh->b_data, root);
 brelse(bh);
 return ret;
}
