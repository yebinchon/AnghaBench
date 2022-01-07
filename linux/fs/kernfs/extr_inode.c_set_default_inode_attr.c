
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_ctime; int i_mtime; int i_atime; int i_mode; } ;


 int current_time (struct inode*) ;

__attribute__((used)) static inline void set_default_inode_attr(struct inode *inode, umode_t mode)
{
 inode->i_mode = mode;
 inode->i_atime = inode->i_mtime =
  inode->i_ctime = current_time(inode);
}
