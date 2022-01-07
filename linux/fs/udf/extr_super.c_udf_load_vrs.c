
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {int s_anchor; scalar_t__ s_last_block; } ;
struct udf_options {int anchor; int novrs; scalar_t__ lastblock; int blocksize; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int VSD_FIRST_SECTOR_OFFSET ;
 int sb_set_blocksize (struct super_block*,int ) ;
 int udf_check_vsd (struct super_block*) ;
 int udf_debug (char*,...) ;
 int udf_find_anchor (struct super_block*,struct kernel_lb_addr*) ;
 scalar_t__ udf_get_last_block (struct super_block*) ;
 int udf_warn (struct super_block*,char*) ;

__attribute__((used)) static int udf_load_vrs(struct super_block *sb, struct udf_options *uopt,
   int silent, struct kernel_lb_addr *fileset)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 int nsr = 0;
 int ret;

 if (!sb_set_blocksize(sb, uopt->blocksize)) {
  if (!silent)
   udf_warn(sb, "Bad block size\n");
  return -EINVAL;
 }
 sbi->s_last_block = uopt->lastblock;
 if (!uopt->novrs) {

  nsr = udf_check_vsd(sb);
  if (!nsr) {
   if (!silent)
    udf_warn(sb, "No VRS found\n");
   return -EINVAL;
  }
  if (nsr == -1)
   udf_debug("Failed to read sector at offset %d. "
      "Assuming open disc. Skipping validity "
      "check\n", VSD_FIRST_SECTOR_OFFSET);
  if (!sbi->s_last_block)
   sbi->s_last_block = udf_get_last_block(sb);
 } else {
  udf_debug("Validity check skipped because of novrs option\n");
 }


 sbi->s_anchor = uopt->anchor;
 ret = udf_find_anchor(sb, fileset);
 if (ret < 0) {
  if (!silent && ret == -EAGAIN)
   udf_warn(sb, "No anchor found\n");
  return ret;
 }
 return 0;
}
