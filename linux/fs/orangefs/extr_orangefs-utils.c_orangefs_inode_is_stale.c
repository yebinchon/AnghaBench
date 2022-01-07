
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_inode_s {int link_target; } ;
struct inode {int i_mode; } ;
struct ORANGEFS_sys_attr_s {int objtype; } ;


 struct orangefs_inode_s* ORANGEFS_I (struct inode*) ;
 int ORANGEFS_NAME_MAX ;
 int S_IFLNK ;
 int orangefs_inode_type (int ) ;
 int orangefs_make_bad_inode (struct inode*) ;
 scalar_t__ strncmp (int ,char*,int ) ;

__attribute__((used)) static int orangefs_inode_is_stale(struct inode *inode,
    struct ORANGEFS_sys_attr_s *attrs, char *link_target)
{
 struct orangefs_inode_s *orangefs_inode = ORANGEFS_I(inode);
 int type = orangefs_inode_type(attrs->objtype);




 if (type == -1 || !(inode->i_mode & type)) {
  orangefs_make_bad_inode(inode);
  return 1;
 }
 if (type == S_IFLNK && strncmp(orangefs_inode->link_target,
     link_target, ORANGEFS_NAME_MAX)) {
  orangefs_make_bad_inode(inode);
  return 1;
 }
 return 0;
}
