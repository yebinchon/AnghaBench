
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dnode_of_data {scalar_t__ nid; scalar_t__ ofs_in_node; struct page* node_page; int inode; } ;


 int ENOENT ;
 int F2FS_I_SB (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct page* f2fs_get_node_page (int ,scalar_t__) ;
 int f2fs_truncate_data_blocks (struct dnode_of_data*) ;
 int truncate_node (struct dnode_of_data*) ;

__attribute__((used)) static int truncate_dnode(struct dnode_of_data *dn)
{
 struct page *page;
 int err;

 if (dn->nid == 0)
  return 1;


 page = f2fs_get_node_page(F2FS_I_SB(dn->inode), dn->nid);
 if (IS_ERR(page) && PTR_ERR(page) == -ENOENT)
  return 1;
 else if (IS_ERR(page))
  return PTR_ERR(page);


 dn->node_page = page;
 dn->ofs_in_node = 0;
 f2fs_truncate_data_blocks(dn);
 err = truncate_node(dn);
 if (err)
  return err;

 return 1;
}
