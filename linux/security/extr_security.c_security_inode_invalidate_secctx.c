
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int call_void_hook (int ,struct inode*) ;
 int inode_invalidate_secctx ;

void security_inode_invalidate_secctx(struct inode *inode)
{
 call_void_hook(inode_invalidate_secctx, inode);
}
