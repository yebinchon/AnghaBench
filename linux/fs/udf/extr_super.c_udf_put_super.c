
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {int s_alloc_mutex; int s_lvid_bh; int s_nls_map; int s_vat_inode; } ;
struct super_block {int * s_fs_info; } ;


 int UDF_FLAG_NLS_MAP ;
 scalar_t__ UDF_QUERY_FLAG (struct super_block*,int ) ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int brelse (int ) ;
 int iput (int ) ;
 int kfree (int *) ;
 int mutex_destroy (int *) ;
 int sb_rdonly (struct super_block*) ;
 int udf_close_lvid (struct super_block*) ;
 int udf_sb_free_partitions (struct super_block*) ;
 int unload_nls (int ) ;

__attribute__((used)) static void udf_put_super(struct super_block *sb)
{
 struct udf_sb_info *sbi;

 sbi = UDF_SB(sb);

 iput(sbi->s_vat_inode);
 if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP))
  unload_nls(sbi->s_nls_map);
 if (!sb_rdonly(sb))
  udf_close_lvid(sb);
 brelse(sbi->s_lvid_bh);
 udf_sb_free_partitions(sb);
 mutex_destroy(&sbi->s_alloc_mutex);
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);
}
