
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_inode {int waitq; int * pipe; int * private; int vfs_inode; } ;


 int init_waitqueue_head (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void
init_once(void *foo)
{
 struct rpc_inode *rpci = (struct rpc_inode *) foo;

 inode_init_once(&rpci->vfs_inode);
 rpci->private = ((void*)0);
 rpci->pipe = ((void*)0);
 init_waitqueue_head(&rpci->waitq);
}
