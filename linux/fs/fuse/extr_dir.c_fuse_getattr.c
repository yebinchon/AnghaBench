
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;


 int EACCES ;
 struct inode* d_inode (int ) ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 int fuse_update_get_attr (struct inode*,int *,struct kstat*,int ,unsigned int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct fuse_conn *fc = get_fuse_conn(inode);

 if (!fuse_allow_current_process(fc))
  return -EACCES;

 return fuse_update_get_attr(inode, ((void*)0), stat, request_mask, flags);
}
