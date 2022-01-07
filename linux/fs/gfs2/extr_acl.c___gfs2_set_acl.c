
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int GFS2_EATYPE_SYS ;
 int __gfs2_xattr_set (struct inode*,char const*,char*,size_t,int ,int ) ;
 char* gfs2_acl_name (int) ;
 int init_user_ns ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int posix_acl_to_xattr (int *,struct posix_acl*,char*,size_t) ;
 size_t posix_acl_xattr_size (int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

int __gfs2_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 int error;
 size_t len;
 char *data;
 const char *name = gfs2_acl_name(type);

 if (acl) {
  len = posix_acl_xattr_size(acl->a_count);
  data = kmalloc(len, GFP_NOFS);
  if (data == ((void*)0))
   return -ENOMEM;
  error = posix_acl_to_xattr(&init_user_ns, acl, data, len);
  if (error < 0)
   goto out;
 } else {
  data = ((void*)0);
  len = 0;
 }

 error = __gfs2_xattr_set(inode, name, data, len, 0, GFS2_EATYPE_SYS);
 if (error)
  goto out;
 set_cached_acl(inode, type, acl);
out:
 kfree(data);
 return error;
}
