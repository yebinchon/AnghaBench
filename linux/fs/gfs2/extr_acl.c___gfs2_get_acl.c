
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_eattr; } ;


 struct posix_acl* ERR_PTR (int) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 char* gfs2_acl_name (int) ;
 int gfs2_xattr_acl_get (struct gfs2_inode*,char const*,char**) ;
 int init_user_ns ;
 int kfree (char*) ;
 struct posix_acl* posix_acl_from_xattr (int *,char*,int) ;

__attribute__((used)) static struct posix_acl *__gfs2_get_acl(struct inode *inode, int type)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct posix_acl *acl;
 const char *name;
 char *data;
 int len;

 if (!ip->i_eattr)
  return ((void*)0);

 name = gfs2_acl_name(type);
 len = gfs2_xattr_acl_get(ip, name, &data);
 if (len <= 0)
  return ERR_PTR(len);
 acl = posix_acl_from_xattr(&init_user_ns, data, len);
 kfree(data);
 return acl;
}
