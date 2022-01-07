
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_dir_entry {int ino; } ;
typedef int ino_t ;


 struct f2fs_dir_entry* f2fs_find_entry (struct inode*,struct qstr const*,struct page**) ;
 int f2fs_put_page (struct page*,int ) ;
 int le32_to_cpu (int ) ;

ino_t f2fs_inode_by_name(struct inode *dir, const struct qstr *qstr,
       struct page **page)
{
 ino_t res = 0;
 struct f2fs_dir_entry *de;

 de = f2fs_find_entry(dir, qstr, page);
 if (de) {
  res = le32_to_cpu(de->ino);
  f2fs_put_page(*page, 0);
 }

 return res;
}
