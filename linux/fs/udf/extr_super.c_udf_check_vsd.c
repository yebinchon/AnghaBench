
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volStructDesc {int dummy; } ;
struct udf_sb_info {int s_session; } ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int VSD_FIRST_SECTOR_OFFSET ;
 int VSD_MAX_SECTOR_OFFSET ;
 int brelse (struct buffer_head*) ;
 int identify_vsd (struct volStructDesc*) ;
 int udf_debug (char*,unsigned int,int) ;
 struct buffer_head* udf_tread (struct super_block*,int) ;

__attribute__((used)) static int udf_check_vsd(struct super_block *sb)
{
 struct volStructDesc *vsd = ((void*)0);
 loff_t sector = VSD_FIRST_SECTOR_OFFSET;
 int sectorsize;
 struct buffer_head *bh = ((void*)0);
 int nsr = 0;
 struct udf_sb_info *sbi;

 sbi = UDF_SB(sb);
 if (sb->s_blocksize < sizeof(struct volStructDesc))
  sectorsize = sizeof(struct volStructDesc);
 else
  sectorsize = sb->s_blocksize;

 sector += (((loff_t)sbi->s_session) << sb->s_blocksize_bits);

 udf_debug("Starting at sector %u (%lu byte sectors)\n",
    (unsigned int)(sector >> sb->s_blocksize_bits),
    sb->s_blocksize);
 for (; !nsr && sector < VSD_MAX_SECTOR_OFFSET; sector += sectorsize) {

  bh = udf_tread(sb, sector >> sb->s_blocksize_bits);
  if (!bh)
   break;

  vsd = (struct volStructDesc *)(bh->b_data +
           (sector & (sb->s_blocksize - 1)));
  nsr = identify_vsd(vsd);

  if (nsr) {
   brelse(bh);
   break;
  }





  if (sb->s_blocksize == 4096) {
   nsr = identify_vsd(vsd + 1);

   if (nsr < 0)
    nsr = 0;
  }
  brelse(bh);
 }

 if (nsr > 0)
  return 1;
 else if (!bh && sector - (sbi->s_session << sb->s_blocksize_bits) ==
   VSD_FIRST_SECTOR_OFFSET)
  return -1;
 else
  return 0;
}
