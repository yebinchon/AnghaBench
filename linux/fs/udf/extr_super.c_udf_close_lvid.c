
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_sb_info {scalar_t__ s_udfrev; int s_alloc_mutex; scalar_t__ s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int * identSuffix; } ;
struct logicalVolIntegrityDescImpUse {void* minUDFWriteRev; void* minUDFReadRev; void* maxUDFWriteRev; TYPE_1__ impIdent; } ;
struct logicalVolIntegrityDesc {int integrityType; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int LVID_INTEGRITY_TYPE_CLOSE ;
 int UDF_FLAG_INCONSISTENT ;
 scalar_t__ UDF_MAX_WRITE_VERSION ;
 int UDF_OS_CLASS_UNIX ;
 int UDF_OS_ID_LINUX ;
 int UDF_QUERY_FLAG (struct super_block*,int ) ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ le16_to_cpu (void*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int udf_finalize_lvid (struct logicalVolIntegrityDesc*) ;
 struct logicalVolIntegrityDescImpUse* udf_sb_lvidiu (struct super_block*) ;

__attribute__((used)) static void udf_close_lvid(struct super_block *sb)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct buffer_head *bh = sbi->s_lvid_bh;
 struct logicalVolIntegrityDesc *lvid;
 struct logicalVolIntegrityDescImpUse *lvidiu;

 if (!bh)
  return;
 lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
 lvidiu = udf_sb_lvidiu(sb);
 if (!lvidiu)
  return;

 mutex_lock(&sbi->s_alloc_mutex);
 lvidiu->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
 lvidiu->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
 if (UDF_MAX_WRITE_VERSION > le16_to_cpu(lvidiu->maxUDFWriteRev))
  lvidiu->maxUDFWriteRev = cpu_to_le16(UDF_MAX_WRITE_VERSION);
 if (sbi->s_udfrev > le16_to_cpu(lvidiu->minUDFReadRev))
  lvidiu->minUDFReadRev = cpu_to_le16(sbi->s_udfrev);
 if (sbi->s_udfrev > le16_to_cpu(lvidiu->minUDFWriteRev))
  lvidiu->minUDFWriteRev = cpu_to_le16(sbi->s_udfrev);
 if (!UDF_QUERY_FLAG(sb, UDF_FLAG_INCONSISTENT))
  lvid->integrityType = cpu_to_le32(LVID_INTEGRITY_TYPE_CLOSE);






 set_buffer_uptodate(bh);
 udf_finalize_lvid(lvid);
 mark_buffer_dirty(bh);
 sbi->s_lvid_dirty = 0;
 mutex_unlock(&sbi->s_alloc_mutex);

 sync_dirty_buffer(bh);
}
