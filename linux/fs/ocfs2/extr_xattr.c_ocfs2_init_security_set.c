
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_security_xattr_info {int value_len; int value; int name; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int OCFS2_XATTR_INDEX_SECURITY ;
 int ocfs2_xattr_set_handle (int *,struct inode*,struct buffer_head*,int ,int ,int ,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ;

int ocfs2_init_security_set(handle_t *handle,
       struct inode *inode,
       struct buffer_head *di_bh,
       struct ocfs2_security_xattr_info *si,
       struct ocfs2_alloc_context *xattr_ac,
       struct ocfs2_alloc_context *data_ac)
{
 return ocfs2_xattr_set_handle(handle, inode, di_bh,
         OCFS2_XATTR_INDEX_SECURITY,
         si->name, si->value, si->value_len, 0,
         xattr_ac, data_ac);
}
