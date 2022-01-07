
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int d_ino; } ;
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;
typedef int ino_t ;


 int fs32_to_cpu (int ,int ) ;
 struct ufs_dir_entry* ufs_find_entry (struct inode*,struct qstr const*,struct page**) ;
 int ufs_put_page (struct page*) ;

ino_t ufs_inode_by_name(struct inode *dir, const struct qstr *qstr)
{
 ino_t res = 0;
 struct ufs_dir_entry *de;
 struct page *page;

 de = ufs_find_entry(dir, qstr, &page);
 if (de) {
  res = fs32_to_cpu(dir->i_sb, de->d_ino);
  ufs_put_page(page);
 }
 return res;
}
