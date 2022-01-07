
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct dnode_of_data {int dummy; } ;


 struct page* f2fs_new_node_page (struct dnode_of_data*,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;

struct page *f2fs_new_inode_page(struct inode *inode)
{
 struct dnode_of_data dn;


 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), inode->i_ino);


 return f2fs_new_node_page(&dn, 0);
}
