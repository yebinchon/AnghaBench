
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct qnx6_sb_info* s_fs_info; } ;
struct qnx6_sb_info {int dummy; } ;



__attribute__((used)) static inline struct qnx6_sb_info *QNX6_SB(struct super_block *sb)
{
 return sb->s_fs_info;
}
