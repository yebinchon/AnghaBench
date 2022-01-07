
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;


 int call_int_hook (int ,int ,struct inode*,void*,int ) ;
 int inode_notifysecctx ;

int security_inode_notifysecctx(struct inode *inode, void *ctx, u32 ctxlen)
{
 return call_int_hook(inode_notifysecctx, 0, inode, ctx, ctxlen);
}
