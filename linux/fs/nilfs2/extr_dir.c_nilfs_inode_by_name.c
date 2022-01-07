
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct nilfs_dir_entry {int inode; } ;
struct inode {int dummy; } ;
typedef int ino_t ;


 int kunmap (struct page*) ;
 int le64_to_cpu (int ) ;
 struct nilfs_dir_entry* nilfs_find_entry (struct inode*,struct qstr const*,struct page**) ;
 int put_page (struct page*) ;

ino_t nilfs_inode_by_name(struct inode *dir, const struct qstr *qstr)
{
 ino_t res = 0;
 struct nilfs_dir_entry *de;
 struct page *page;

 de = nilfs_find_entry(dir, qstr, &page);
 if (de) {
  res = le64_to_cpu(de->inode);
  kunmap(page);
  put_page(page);
 }
 return res;
}
