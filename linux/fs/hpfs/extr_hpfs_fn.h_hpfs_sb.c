
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct hpfs_sb_info* s_fs_info; } ;
struct hpfs_sb_info {int dummy; } ;



__attribute__((used)) static inline struct hpfs_sb_info *hpfs_sb(struct super_block *sb)
{
 return sb->s_fs_info;
}
