
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef int nid_t ;
struct TYPE_2__ {int i_xattr_nid; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 int f2fs_i_xnid_write (struct inode*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,struct page*,int ) ;
 int truncate_node (struct dnode_of_data*) ;

int f2fs_truncate_xattr_node(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 nid_t nid = F2FS_I(inode)->i_xattr_nid;
 struct dnode_of_data dn;
 struct page *npage;
 int err;

 if (!nid)
  return 0;

 npage = f2fs_get_node_page(sbi, nid);
 if (IS_ERR(npage))
  return PTR_ERR(npage);

 set_new_dnode(&dn, inode, ((void*)0), npage, nid);
 err = truncate_node(&dn);
 if (err) {
  f2fs_put_page(npage, 1);
  return err;
 }

 f2fs_i_xnid_write(inode, 0);

 return 0;
}
