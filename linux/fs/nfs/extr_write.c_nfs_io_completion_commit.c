
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs_commit_inode (void*,int ) ;

__attribute__((used)) static void nfs_io_completion_commit(void *inode)
{
 nfs_commit_inode(inode, 0);
}
