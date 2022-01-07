
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qnx6_sb_info {int dummy; } ;
struct qnx6_dir_entry {int de_inode; int de_fname; } ;


 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int fs32_to_cpu (struct qnx6_sb_info*,int ) ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static unsigned qnx6_match(struct super_block *s, int len, const char *name,
   struct qnx6_dir_entry *de)
{
 struct qnx6_sb_info *sbi = QNX6_SB(s);
 if (memcmp(name, de->de_fname, len) == 0)
  return fs32_to_cpu(sbi, de->de_inode);
 return 0;
}
