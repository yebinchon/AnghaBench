
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_sb; } ;
struct ext4_map_blocks {int m_len; int m_pblk; scalar_t__ m_lblk; } ;
struct TYPE_5__ {TYPE_1__* s_es; } ;
struct TYPE_4__ {int s_journal_inum; } ;


 int EFSCORRUPTED ;
 TYPE_2__* EXT4_SB (int ) ;
 int ext4_data_block_valid (TYPE_2__*,int ,int ) ;
 int ext4_error_inode (struct inode*,char const*,unsigned int,int ,char*,unsigned long,int ,int ) ;
 scalar_t__ ext4_has_feature_journal (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int __check_block_validity(struct inode *inode, const char *func,
    unsigned int line,
    struct ext4_map_blocks *map)
{
 if (ext4_has_feature_journal(inode->i_sb) &&
     (inode->i_ino ==
      le32_to_cpu(EXT4_SB(inode->i_sb)->s_es->s_journal_inum)))
  return 0;
 if (!ext4_data_block_valid(EXT4_SB(inode->i_sb), map->m_pblk,
       map->m_len)) {
  ext4_error_inode(inode, func, line, map->m_pblk,
     "lblock %lu mapped to illegal pblock %llu "
     "(length %d)", (unsigned long) map->m_lblk,
     map->m_pblk, map->m_len);
  return -EFSCORRUPTED;
 }
 return 0;
}
