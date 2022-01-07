
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int name; } ;
struct page {int dummy; } ;
struct f2fs_inode {int i_name; int i_namelen; } ;


 struct f2fs_inode* F2FS_INODE (struct page*) ;
 int NODE ;
 int cpu_to_le32 (int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int memcpy (int ,int ,int ) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static void init_dent_inode(const struct qstr *name, struct page *ipage)
{
 struct f2fs_inode *ri;

 f2fs_wait_on_page_writeback(ipage, NODE, 1, 1);


 ri = F2FS_INODE(ipage);
 ri->i_namelen = cpu_to_le32(name->len);
 memcpy(ri->i_name, name->name, name->len);
 set_page_dirty(ipage);
}
