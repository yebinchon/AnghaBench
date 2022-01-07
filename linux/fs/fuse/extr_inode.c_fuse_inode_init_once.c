
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_init_once (struct inode*) ;

__attribute__((used)) static void fuse_inode_init_once(void *foo)
{
 struct inode *inode = foo;

 inode_init_once(inode);
}
