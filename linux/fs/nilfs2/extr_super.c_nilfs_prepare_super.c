
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sbsize; struct nilfs_super_block** ns_sbp; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {scalar_t__ s_magic; } ;


 int KERN_CRIT ;
 int NILFS_SUPER_MAGIC ;
 scalar_t__ cpu_to_le16 (int ) ;
 int memcpy (struct nilfs_super_block*,struct nilfs_super_block*,int ) ;
 int nilfs_msg (struct super_block*,int ,char*) ;
 int nilfs_swap_super_block (struct the_nilfs*) ;

struct nilfs_super_block **nilfs_prepare_super(struct super_block *sb,
            int flip)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_super_block **sbp = nilfs->ns_sbp;


 if (sbp[0]->s_magic != cpu_to_le16(NILFS_SUPER_MAGIC)) {
  if (sbp[1] &&
      sbp[1]->s_magic == cpu_to_le16(NILFS_SUPER_MAGIC)) {
   memcpy(sbp[0], sbp[1], nilfs->ns_sbsize);
  } else {
   nilfs_msg(sb, KERN_CRIT, "superblock broke");
   return ((void*)0);
  }
 } else if (sbp[1] &&
     sbp[1]->s_magic != cpu_to_le16(NILFS_SUPER_MAGIC)) {
  memcpy(sbp[1], sbp[0], nilfs->ns_sbsize);
 }

 if (flip && sbp[1])
  nilfs_swap_super_block(nilfs);

 return sbp;
}
