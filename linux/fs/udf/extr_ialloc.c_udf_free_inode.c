
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_sb_info {int s_alloc_mutex; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDescImpUse {int numFiles; int numDirs; } ;
struct inode {int i_mode; struct super_block* i_sb; } ;
struct TYPE_2__ {int i_location; } ;


 scalar_t__ S_ISDIR (int ) ;
 TYPE_1__* UDF_I (struct inode*) ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int le32_add_cpu (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udf_free_blocks (struct super_block*,int *,int *,int ,int) ;
 struct logicalVolIntegrityDescImpUse* udf_sb_lvidiu (struct super_block*) ;
 int udf_updated_lvid (struct super_block*) ;

void udf_free_inode(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct logicalVolIntegrityDescImpUse *lvidiu = udf_sb_lvidiu(sb);

 if (lvidiu) {
  mutex_lock(&sbi->s_alloc_mutex);
  if (S_ISDIR(inode->i_mode))
   le32_add_cpu(&lvidiu->numDirs, -1);
  else
   le32_add_cpu(&lvidiu->numFiles, -1);
  udf_updated_lvid(sb);
  mutex_unlock(&sbi->s_alloc_mutex);
 }

 udf_free_blocks(sb, ((void*)0), &UDF_I(inode)->i_location, 0, 1);
}
