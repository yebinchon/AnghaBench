
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qnx6_sb_info {int dummy; } ;
struct qnx6_long_filename {int lf_fname; int lf_size; } ;
struct qnx6_long_dir_entry {int de_inode; } ;
struct page {int dummy; } ;
struct inode {struct super_block* i_sb; } ;


 scalar_t__ IS_ERR (struct qnx6_long_filename*) ;
 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int fs16_to_cpu (struct qnx6_sb_info*,int ) ;
 int fs32_to_cpu (struct qnx6_sb_info*,int ) ;
 scalar_t__ memcmp (char const*,int ,int) ;
 struct qnx6_long_filename* qnx6_longname (struct super_block*,struct qnx6_long_dir_entry*,struct page**) ;
 int qnx6_put_page (struct page*) ;

__attribute__((used)) static unsigned qnx6_long_match(int len, const char *name,
   struct qnx6_long_dir_entry *de, struct inode *dir)
{
 struct super_block *s = dir->i_sb;
 struct qnx6_sb_info *sbi = QNX6_SB(s);
 struct page *page;
 int thislen;
 struct qnx6_long_filename *lf = qnx6_longname(s, de, &page);

 if (IS_ERR(lf))
  return 0;

 thislen = fs16_to_cpu(sbi, lf->lf_size);
 if (len != thislen) {
  qnx6_put_page(page);
  return 0;
 }
 if (memcmp(name, lf->lf_fname, len) == 0) {
  qnx6_put_page(page);
  return fs32_to_cpu(sbi, de->de_inode);
 }
 qnx6_put_page(page);
 return 0;
}
