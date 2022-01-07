
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_iattrs {int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; } ;
struct inode {void* i_ctime; void* i_mtime; void* i_atime; int i_gid; int i_uid; } ;


 void* timestamp_truncate (int ,struct inode*) ;

__attribute__((used)) static inline void set_inode_attr(struct inode *inode,
      struct kernfs_iattrs *attrs)
{
 inode->i_uid = attrs->ia_uid;
 inode->i_gid = attrs->ia_gid;
 inode->i_atime = timestamp_truncate(attrs->ia_atime, inode);
 inode->i_mtime = timestamp_truncate(attrs->ia_mtime, inode);
 inode->i_ctime = timestamp_truncate(attrs->ia_ctime, inode);
}
