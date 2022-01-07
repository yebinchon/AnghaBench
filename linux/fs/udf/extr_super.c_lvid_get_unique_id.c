
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct udf_sb_info {int s_alloc_mutex; struct buffer_head* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDesc {scalar_t__ logicalVolContentsUse; } ;
struct logicalVolHeaderDesc {int uniqueID; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int cpu_to_le64 (int) ;
 int le64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udf_updated_lvid (struct super_block*) ;

u64 lvid_get_unique_id(struct super_block *sb)
{
 struct buffer_head *bh;
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct logicalVolIntegrityDesc *lvid;
 struct logicalVolHeaderDesc *lvhd;
 u64 uniqueID;
 u64 ret;

 bh = sbi->s_lvid_bh;
 if (!bh)
  return 0;

 lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
 lvhd = (struct logicalVolHeaderDesc *)lvid->logicalVolContentsUse;

 mutex_lock(&sbi->s_alloc_mutex);
 ret = uniqueID = le64_to_cpu(lvhd->uniqueID);
 if (!(++uniqueID & 0xFFFFFFFF))
  uniqueID += 16;
 lvhd->uniqueID = cpu_to_le64(uniqueID);
 udf_updated_lvid(sb);
 mutex_unlock(&sbi->s_alloc_mutex);

 return ret;
}
