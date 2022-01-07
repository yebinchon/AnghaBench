
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {int s_last_block; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
typedef int sector_t ;


 int EAGAIN ;
 int UDF_CLEAR_FLAG (struct super_block*,int ) ;
 int UDF_FLAG_VARCONV ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int UDF_SET_FLAG (struct super_block*,int ) ;
 int udf_scan_anchors (struct super_block*,int *,struct kernel_lb_addr*) ;
 int udf_variable_to_fixed (int ) ;

__attribute__((used)) static int udf_find_anchor(struct super_block *sb,
      struct kernel_lb_addr *fileset)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 sector_t lastblock = sbi->s_last_block;
 int ret;

 ret = udf_scan_anchors(sb, &lastblock, fileset);
 if (ret != -EAGAIN)
  goto out;


 UDF_SET_FLAG(sb, UDF_FLAG_VARCONV);
 lastblock = udf_variable_to_fixed(sbi->s_last_block);

 ret = udf_scan_anchors(sb, &lastblock, fileset);
 if (ret != -EAGAIN)
  goto out;

 lastblock = sbi->s_last_block;

 ret = udf_scan_anchors(sb, &lastblock, fileset);
 if (ret < 0) {

  UDF_CLEAR_FLAG(sb, UDF_FLAG_VARCONV);
 }
out:
 if (ret == 0)
  sbi->s_last_block = lastblock;
 return ret;
}
