
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct hfsplus_sb_info {TYPE_2__* s_vhdr; } ;
struct hfs_btree {scalar_t__ cnid; TYPE_1__* inode; } ;
struct TYPE_4__ {int attributes; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;


 scalar_t__ HFSPLUS_CAT_CNID ;
 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 int const HFSPLUS_VOL_UNUSED_NODE_FIX ;
 int be32_to_cpu (int ) ;

bool hfs_bnode_need_zeroout(struct hfs_btree *tree)
{
 struct super_block *sb = tree->inode->i_sb;
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);
 const u32 volume_attr = be32_to_cpu(sbi->s_vhdr->attributes);

 return tree->cnid == HFSPLUS_CAT_CNID &&
  volume_attr & HFSPLUS_VOL_UNUSED_NODE_FIX;
}
