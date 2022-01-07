
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ udf_pblk_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_sb; } ;
struct extent_position {int bh; } ;
typedef int sector_t ;
struct TYPE_2__ {int i_data_sem; } ;


 int EXT_RECORDED_ALLOCATED ;
 int UDF_FLAG_VARCONV ;
 TYPE_1__* UDF_I (struct inode*) ;
 scalar_t__ UDF_QUERY_FLAG (int ,int ) ;
 int brelse (int ) ;
 int down_read (int *) ;
 int inode_bmap (struct inode*,int ,struct extent_position*,struct kernel_lb_addr*,int *,int *) ;
 scalar_t__ udf_fixed_to_variable (scalar_t__) ;
 scalar_t__ udf_get_lb_pblock (int ,struct kernel_lb_addr*,int ) ;
 int up_read (int *) ;

udf_pblk_t udf_block_map(struct inode *inode, sector_t block)
{
 struct kernel_lb_addr eloc;
 uint32_t elen;
 sector_t offset;
 struct extent_position epos = {};
 udf_pblk_t ret;

 down_read(&UDF_I(inode)->i_data_sem);

 if (inode_bmap(inode, block, &epos, &eloc, &elen, &offset) ==
      (EXT_RECORDED_ALLOCATED >> 30))
  ret = udf_get_lb_pblock(inode->i_sb, &eloc, offset);
 else
  ret = 0;

 up_read(&UDF_I(inode)->i_data_sem);
 brelse(epos.bh);

 if (UDF_QUERY_FLAG(inode->i_sb, UDF_FLAG_VARCONV))
  return udf_fixed_to_variable(ret);
 else
  return ret;
}
