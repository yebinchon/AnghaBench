
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {struct dentry* dentry; } ;
struct page {int dummy; } ;
struct kstat {int size; } ;
struct inode {int i_mapping; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int page_address (struct page*) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (int ,int ,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int udf_symlink_getattr(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int flags)
{
 struct dentry *dentry = path->dentry;
 struct inode *inode = d_backing_inode(dentry);
 struct page *page;

 generic_fillattr(inode, stat);
 page = read_mapping_page(inode->i_mapping, 0, ((void*)0));
 if (IS_ERR(page))
  return PTR_ERR(page);
 stat->size = strlen(page_address(page));
 put_page(page);

 return 0;
}
