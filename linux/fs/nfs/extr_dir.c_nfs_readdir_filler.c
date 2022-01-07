
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct inode {int i_mapping; } ;
struct TYPE_3__ {int file; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;


 int SetPageUptodate (struct page*) ;
 struct inode* file_inode (int ) ;
 scalar_t__ invalidate_inode_pages2_range (int ,scalar_t__,int) ;
 int nfs_readdir_xdr_to_array (TYPE_1__*,struct page*,struct inode*) ;
 int nfs_zap_mapping (struct inode*,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static
int nfs_readdir_filler(void *data, struct page* page)
{
 nfs_readdir_descriptor_t *desc = data;
 struct inode *inode = file_inode(desc->file);
 int ret;

 ret = nfs_readdir_xdr_to_array(desc, page, inode);
 if (ret < 0)
  goto error;
 SetPageUptodate(page);

 if (invalidate_inode_pages2_range(inode->i_mapping, page->index + 1, -1) < 0) {

  nfs_zap_mapping(inode, inode->i_mapping);
 }
 unlock_page(page);
 return 0;
 error:
 unlock_page(page);
 return ret;
}
