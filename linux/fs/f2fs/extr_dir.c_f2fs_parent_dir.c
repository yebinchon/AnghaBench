
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;


 struct qstr QSTR_INIT (char*,int) ;
 struct f2fs_dir_entry* f2fs_find_entry (struct inode*,struct qstr*,struct page**) ;

struct f2fs_dir_entry *f2fs_parent_dir(struct inode *dir, struct page **p)
{
 struct qstr dotdot = QSTR_INIT("..", 2);

 return f2fs_find_entry(dir, &dotdot, p);
}
