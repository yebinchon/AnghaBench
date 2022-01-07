
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;




 int EINVAL ;
 int ENODATA ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_NOFS ;
 int OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct posix_acl* ocfs2_acl_from_xattr (char*,int) ;
 int ocfs2_xattr_get_nolock (struct inode*,struct buffer_head*,int,char*,char*,int) ;

__attribute__((used)) static struct posix_acl *ocfs2_get_acl_nolock(struct inode *inode,
           int type,
           struct buffer_head *di_bh)
{
 int name_index;
 char *value = ((void*)0);
 struct posix_acl *acl;
 int retval;

 switch (type) {
 case 129:
  name_index = OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS;
  break;
 case 128:
  name_index = OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }

 retval = ocfs2_xattr_get_nolock(inode, di_bh, name_index, "", ((void*)0), 0);
 if (retval > 0) {
  value = kmalloc(retval, GFP_NOFS);
  if (!value)
   return ERR_PTR(-ENOMEM);
  retval = ocfs2_xattr_get_nolock(inode, di_bh, name_index,
      "", value, retval);
 }

 if (retval > 0)
  acl = ocfs2_acl_from_xattr(value, retval);
 else if (retval == -ENODATA || retval == 0)
  acl = ((void*)0);
 else
  acl = ERR_PTR(retval);

 kfree(value);

 return acl;
}
