
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_attr_list_context {int resynch; char* alist; size_t bufsize; size_t firstu; scalar_t__ count; int put_listent; struct attrlist_cursor_kern* cursor; int dp; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct attrlist_cursor_kern {int member_0; } ;
typedef int ssize_t ;
typedef int context ;


 int ERANGE ;
 int XFS_I (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int memset (struct xfs_attr_list_context*,int ,int) ;
 int xfs_attr_list_int (struct xfs_attr_list_context*) ;
 int xfs_xattr_put_listent ;

ssize_t
xfs_vn_listxattr(
 struct dentry *dentry,
 char *data,
 size_t size)
{
 struct xfs_attr_list_context context;
 struct attrlist_cursor_kern cursor = { 0 };
 struct inode *inode = d_inode(dentry);
 int error;




 memset(&context, 0, sizeof(context));
 context.dp = XFS_I(inode);
 context.cursor = &cursor;
 context.resynch = 1;
 context.alist = size ? data : ((void*)0);
 context.bufsize = size;
 context.firstu = context.bufsize;
 context.put_listent = xfs_xattr_put_listent;

 error = xfs_attr_list_int(&context);
 if (error)
  return error;
 if (context.count < 0)
  return -ERANGE;

 return context.count;
}
