
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_blocksize_bits; } ;
struct kernel_lb_addr {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int extLength; int extLocation; } ;
struct TYPE_3__ {int extLength; int extLocation; } ;
struct anchorVolDescPtr {TYPE_2__ reserveVolDescSeqExt; TYPE_1__ mainVolDescSeqExt; } ;
typedef int sector_t ;


 int EAGAIN ;
 int EIO ;
 int le32_to_cpu (int ) ;
 int udf_process_sequence (struct super_block*,int,int,struct kernel_lb_addr*) ;
 int udf_sb_free_partitions (struct super_block*) ;

__attribute__((used)) static int udf_load_sequence(struct super_block *sb, struct buffer_head *bh,
        struct kernel_lb_addr *fileset)
{
 struct anchorVolDescPtr *anchor;
 sector_t main_s, main_e, reserve_s, reserve_e;
 int ret;

 anchor = (struct anchorVolDescPtr *)bh->b_data;


 main_s = le32_to_cpu(anchor->mainVolDescSeqExt.extLocation);
 main_e = le32_to_cpu(anchor->mainVolDescSeqExt.extLength);
 main_e = main_e >> sb->s_blocksize_bits;
 main_e += main_s - 1;


 reserve_s = le32_to_cpu(anchor->reserveVolDescSeqExt.extLocation);
 reserve_e = le32_to_cpu(anchor->reserveVolDescSeqExt.extLength);
 reserve_e = reserve_e >> sb->s_blocksize_bits;
 reserve_e += reserve_s - 1;



 ret = udf_process_sequence(sb, main_s, main_e, fileset);
 if (ret != -EAGAIN)
  return ret;
 udf_sb_free_partitions(sb);
 ret = udf_process_sequence(sb, reserve_s, reserve_e, fileset);
 if (ret < 0) {
  udf_sb_free_partitions(sb);

  if (ret == -EAGAIN)
   ret = -EIO;
 }
 return ret;
}
