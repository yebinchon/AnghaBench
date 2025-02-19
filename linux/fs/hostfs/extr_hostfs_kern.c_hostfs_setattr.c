
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; int ia_mode; } ;
struct hostfs_iattr {scalar_t__ ia_size; int ia_valid; void* ia_ctime; void* ia_mtime; void* ia_atime; int ia_gid; int ia_uid; int ia_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int fd; } ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int ENOMEM ;
 int HOSTFS_ATTR_ATIME ;
 int HOSTFS_ATTR_ATIME_SET ;
 int HOSTFS_ATTR_CTIME ;
 int HOSTFS_ATTR_GID ;
 int HOSTFS_ATTR_MODE ;
 int HOSTFS_ATTR_MTIME ;
 int HOSTFS_ATTR_MTIME_SET ;
 int HOSTFS_ATTR_SIZE ;
 int HOSTFS_ATTR_UID ;
 TYPE_1__* HOSTFS_I (struct inode*) ;
 int __putname (char*) ;
 scalar_t__ append ;
 struct inode* d_inode (struct dentry*) ;
 char* dentry_name (struct dentry*) ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int init_user_ns ;
 int mark_inode_dirty (struct inode*) ;
 int set_attr (char*,struct hostfs_iattr*,int) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 void* timespec64_to_timespec (int ) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

__attribute__((used)) static int hostfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 struct hostfs_iattr attrs;
 char *name;
 int err;

 int fd = HOSTFS_I(inode)->fd;

 err = setattr_prepare(dentry, attr);
 if (err)
  return err;

 if (append)
  attr->ia_valid &= ~ATTR_SIZE;

 attrs.ia_valid = 0;
 if (attr->ia_valid & ATTR_MODE) {
  attrs.ia_valid |= HOSTFS_ATTR_MODE;
  attrs.ia_mode = attr->ia_mode;
 }
 if (attr->ia_valid & ATTR_UID) {
  attrs.ia_valid |= HOSTFS_ATTR_UID;
  attrs.ia_uid = from_kuid(&init_user_ns, attr->ia_uid);
 }
 if (attr->ia_valid & ATTR_GID) {
  attrs.ia_valid |= HOSTFS_ATTR_GID;
  attrs.ia_gid = from_kgid(&init_user_ns, attr->ia_gid);
 }
 if (attr->ia_valid & ATTR_SIZE) {
  attrs.ia_valid |= HOSTFS_ATTR_SIZE;
  attrs.ia_size = attr->ia_size;
 }
 if (attr->ia_valid & ATTR_ATIME) {
  attrs.ia_valid |= HOSTFS_ATTR_ATIME;
  attrs.ia_atime = timespec64_to_timespec(attr->ia_atime);
 }
 if (attr->ia_valid & ATTR_MTIME) {
  attrs.ia_valid |= HOSTFS_ATTR_MTIME;
  attrs.ia_mtime = timespec64_to_timespec(attr->ia_mtime);
 }
 if (attr->ia_valid & ATTR_CTIME) {
  attrs.ia_valid |= HOSTFS_ATTR_CTIME;
  attrs.ia_ctime = timespec64_to_timespec(attr->ia_ctime);
 }
 if (attr->ia_valid & ATTR_ATIME_SET) {
  attrs.ia_valid |= HOSTFS_ATTR_ATIME_SET;
 }
 if (attr->ia_valid & ATTR_MTIME_SET) {
  attrs.ia_valid |= HOSTFS_ATTR_MTIME_SET;
 }
 name = dentry_name(dentry);
 if (name == ((void*)0))
  return -ENOMEM;
 err = set_attr(name, &attrs, fd);
 __putname(name);
 if (err)
  return err;

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode))
  truncate_setsize(inode, attr->ia_size);

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}
