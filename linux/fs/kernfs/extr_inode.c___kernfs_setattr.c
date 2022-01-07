
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int mode; } ;
struct kernfs_iattrs {int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; } ;
struct iattr {unsigned int ia_valid; int ia_mode; int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; } ;


 unsigned int ATTR_ATIME ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_UID ;
 int ENOMEM ;
 struct kernfs_iattrs* kernfs_iattrs (struct kernfs_node*) ;

int __kernfs_setattr(struct kernfs_node *kn, const struct iattr *iattr)
{
 struct kernfs_iattrs *attrs;
 unsigned int ia_valid = iattr->ia_valid;

 attrs = kernfs_iattrs(kn);
 if (!attrs)
  return -ENOMEM;

 if (ia_valid & ATTR_UID)
  attrs->ia_uid = iattr->ia_uid;
 if (ia_valid & ATTR_GID)
  attrs->ia_gid = iattr->ia_gid;
 if (ia_valid & ATTR_ATIME)
  attrs->ia_atime = iattr->ia_atime;
 if (ia_valid & ATTR_MTIME)
  attrs->ia_mtime = iattr->ia_mtime;
 if (ia_valid & ATTR_CTIME)
  attrs->ia_ctime = iattr->ia_ctime;
 if (ia_valid & ATTR_MODE)
  kn->mode = iattr->ia_mode;
 return 0;
}
