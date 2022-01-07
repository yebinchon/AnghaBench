
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; int i_gid; void* i_ctime; void* i_mtime; void* i_atime; int i_uid; } ;
struct iattr {int ia_valid; int ia_mode; int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; } ;


 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_UID ;
 int CAP_FSETID ;
 int S_ISGID ;
 int capable (int ) ;
 int in_group_p (int ) ;
 void* timestamp_truncate (int ,struct inode*) ;

__attribute__((used)) static void do_attr_changes(struct inode *inode, const struct iattr *attr)
{
 if (attr->ia_valid & ATTR_UID)
  inode->i_uid = attr->ia_uid;
 if (attr->ia_valid & ATTR_GID)
  inode->i_gid = attr->ia_gid;
 if (attr->ia_valid & ATTR_ATIME) {
  inode->i_atime = timestamp_truncate(attr->ia_atime,
        inode);
 }
 if (attr->ia_valid & ATTR_MTIME) {
  inode->i_mtime = timestamp_truncate(attr->ia_mtime,
        inode);
 }
 if (attr->ia_valid & ATTR_CTIME) {
  inode->i_ctime = timestamp_truncate(attr->ia_ctime,
        inode);
 }
 if (attr->ia_valid & ATTR_MODE) {
  umode_t mode = attr->ia_mode;

  if (!in_group_p(inode->i_gid) && !capable(CAP_FSETID))
   mode &= ~S_ISGID;
  inode->i_mode = mode;
 }
}
