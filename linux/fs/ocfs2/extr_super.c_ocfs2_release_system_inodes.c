
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int max_slots; struct inode** local_system_inodes; struct inode* root_inode; struct inode* sys_root_inode; struct inode** global_system_inodes; } ;
struct inode {int dummy; } ;


 int NUM_GLOBAL_SYSTEM_INODES ;
 int NUM_LOCAL_SYSTEM_INODES ;
 int iput (struct inode*) ;
 int kfree (struct inode**) ;

__attribute__((used)) static void ocfs2_release_system_inodes(struct ocfs2_super *osb)
{
 int i;
 struct inode *inode;

 for (i = 0; i < NUM_GLOBAL_SYSTEM_INODES; i++) {
  inode = osb->global_system_inodes[i];
  if (inode) {
   iput(inode);
   osb->global_system_inodes[i] = ((void*)0);
  }
 }

 inode = osb->sys_root_inode;
 if (inode) {
  iput(inode);
  osb->sys_root_inode = ((void*)0);
 }

 inode = osb->root_inode;
 if (inode) {
  iput(inode);
  osb->root_inode = ((void*)0);
 }

 if (!osb->local_system_inodes)
  return;

 for (i = 0; i < NUM_LOCAL_SYSTEM_INODES * osb->max_slots; i++) {
  if (osb->local_system_inodes[i]) {
   iput(osb->local_system_inodes[i]);
   osb->local_system_inodes[i] = ((void*)0);
  }
 }

 kfree(osb->local_system_inodes);
 osb->local_system_inodes = ((void*)0);
}
