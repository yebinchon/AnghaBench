
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int call_int_hook (int ,int ,struct inode*,void**,int *) ;
 int inode_getsecctx ;

int security_inode_getsecctx(struct inode *inode, void **ctx, u32 *ctxlen)
{
 return call_int_hook(inode_getsecctx, -EOPNOTSUPP, inode, ctx, ctxlen);
}
