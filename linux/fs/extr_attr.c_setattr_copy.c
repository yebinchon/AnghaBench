
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; int i_gid; void* i_ctime; void* i_mtime; void* i_atime; int i_uid; } ;
struct iattr {unsigned int ia_valid; int ia_mode; int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; } ;


 unsigned int ATTR_ATIME ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_UID ;
 int CAP_FSETID ;
 int S_ISGID ;
 int capable_wrt_inode_uidgid (struct inode*,int ) ;
 int in_group_p (int ) ;
 void* timestamp_truncate (int ,struct inode*) ;

void setattr_copy(struct inode *inode, const struct iattr *attr)
{
 unsigned int ia_valid = attr->ia_valid;

 if (ia_valid & ATTR_UID)
  inode->i_uid = attr->ia_uid;
 if (ia_valid & ATTR_GID)
  inode->i_gid = attr->ia_gid;
 if (ia_valid & ATTR_ATIME) {
  inode->i_atime = timestamp_truncate(attr->ia_atime,
        inode);
 }
 if (ia_valid & ATTR_MTIME) {
  inode->i_mtime = timestamp_truncate(attr->ia_mtime,
        inode);
 }
 if (ia_valid & ATTR_CTIME) {
  inode->i_ctime = timestamp_truncate(attr->ia_ctime,
        inode);
 }
 if (ia_valid & ATTR_MODE) {
  umode_t mode = attr->ia_mode;

  if (!in_group_p(inode->i_gid) &&
      !capable_wrt_inode_uidgid(inode, CAP_FSETID))
   mode &= ~S_ISGID;
  inode->i_mode = mode;
 }
}
