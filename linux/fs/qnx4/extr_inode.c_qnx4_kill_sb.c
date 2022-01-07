
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qnx4_sb_info {struct qnx4_sb_info* BitMap; } ;


 int kfree (struct qnx4_sb_info*) ;
 int kill_block_super (struct super_block*) ;
 struct qnx4_sb_info* qnx4_sb (struct super_block*) ;

__attribute__((used)) static void qnx4_kill_sb(struct super_block *sb)
{
 struct qnx4_sb_info *qs = qnx4_sb(sb);
 kill_block_super(sb);
 if (qs) {
  kfree(qs->BitMap);
  kfree(qs);
 }
}
