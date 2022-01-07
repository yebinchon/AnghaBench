
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int system_file_mutex; struct inode** global_system_inodes; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 struct inode* _ocfs2_get_system_file_inode (struct ocfs2_super*,int,int ) ;
 struct inode** get_local_system_inode (struct ocfs2_super*,int,int ) ;
 struct inode* igrab (struct inode*) ;
 scalar_t__ is_global_system_inode (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct inode *ocfs2_get_system_file_inode(struct ocfs2_super *osb,
       int type,
       u32 slot)
{
 struct inode *inode = ((void*)0);
 struct inode **arr = ((void*)0);


 if (is_global_system_inode(type)) {
  arr = &(osb->global_system_inodes[type]);
 } else
  arr = get_local_system_inode(osb, type, slot);

 mutex_lock(&osb->system_file_mutex);
 if (arr && ((inode = *arr) != ((void*)0))) {

  inode = igrab(inode);
  mutex_unlock(&osb->system_file_mutex);
  BUG_ON(!inode);

  return inode;
 }


 inode = _ocfs2_get_system_file_inode(osb, type, slot);


 if (arr && inode) {
  *arr = igrab(inode);
  BUG_ON(!*arr);
 }
 mutex_unlock(&osb->system_file_mutex);
 return inode;
}
