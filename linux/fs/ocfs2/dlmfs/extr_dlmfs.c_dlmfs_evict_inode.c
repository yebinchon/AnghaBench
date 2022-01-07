
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int * i_ino; } ;
struct dlmfs_inode_private {int * ip_conn; int * ip_parent; int ip_lockres; } ;


 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int clear_inode (struct inode*) ;
 int iput (int *) ;
 int mlog (int ,char*,int *) ;
 int mlog_errno (int) ;
 int user_dlm_destroy_lock (int *) ;
 int user_dlm_unregister (int *) ;

__attribute__((used)) static void dlmfs_evict_inode(struct inode *inode)
{
 int status;
 struct dlmfs_inode_private *ip;

 clear_inode(inode);

 mlog(0, "inode %lu\n", inode->i_ino);

 ip = DLMFS_I(inode);

 if (S_ISREG(inode->i_mode)) {
  status = user_dlm_destroy_lock(&ip->ip_lockres);
  if (status < 0)
   mlog_errno(status);
  iput(ip->ip_parent);
  goto clear_fields;
 }

 mlog(0, "we're a directory, ip->ip_conn = 0x%p\n", ip->ip_conn);


 if (ip->ip_conn)
  user_dlm_unregister(ip->ip_conn);
clear_fields:
 ip->ip_parent = ((void*)0);
 ip->ip_conn = ((void*)0);
}
