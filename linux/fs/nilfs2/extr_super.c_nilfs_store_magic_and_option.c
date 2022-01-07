
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {void* ns_watermark; void* ns_interval; void* ns_resgid; void* ns_resuid; } ;
struct super_block {int s_flags; void* s_magic; struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int s_c_block_max; int s_c_interval; int s_def_resgid; int s_def_resuid; int s_magic; } ;


 int EINVAL ;
 int SB_NOATIME ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int nilfs_set_default_options (struct super_block*,struct nilfs_super_block*) ;
 int parse_options (char*,struct super_block*,int ) ;

int nilfs_store_magic_and_option(struct super_block *sb,
     struct nilfs_super_block *sbp,
     char *data)
{
 struct the_nilfs *nilfs = sb->s_fs_info;

 sb->s_magic = le16_to_cpu(sbp->s_magic);






 nilfs_set_default_options(sb, sbp);

 nilfs->ns_resuid = le16_to_cpu(sbp->s_def_resuid);
 nilfs->ns_resgid = le16_to_cpu(sbp->s_def_resgid);
 nilfs->ns_interval = le32_to_cpu(sbp->s_c_interval);
 nilfs->ns_watermark = le32_to_cpu(sbp->s_c_block_max);

 return !parse_options(data, sb, 0) ? -EINVAL : 0;
}
