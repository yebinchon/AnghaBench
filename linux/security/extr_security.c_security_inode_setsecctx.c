
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int dummy; } ;


 int call_int_hook (int ,int ,struct dentry*,void*,int ) ;
 int inode_setsecctx ;

int security_inode_setsecctx(struct dentry *dentry, void *ctx, u32 ctxlen)
{
 return call_int_hook(inode_setsecctx, 0, dentry, ctx, ctxlen);
}
