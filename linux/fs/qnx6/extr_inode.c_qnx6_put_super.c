
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct qnx6_sb_info {int inodes; int longfile; int sb_buf; } ;


 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int brelse (int ) ;
 int iput (int ) ;
 int kfree (struct qnx6_sb_info*) ;

__attribute__((used)) static void qnx6_put_super(struct super_block *sb)
{
 struct qnx6_sb_info *qs = QNX6_SB(sb);
 brelse(qs->sb_buf);
 iput(qs->longfile);
 iput(qs->inodes);
 kfree(qs);
 sb->s_fs_info = ((void*)0);
 return;
}
