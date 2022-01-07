
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int XATTR_SELINUX_SUFFIX ;
 int selinux_inode_setsecurity (struct inode*,int ,void*,int ,int ) ;

__attribute__((used)) static int selinux_inode_notifysecctx(struct inode *inode, void *ctx, u32 ctxlen)
{
 int rc = selinux_inode_setsecurity(inode, XATTR_SELINUX_SUFFIX,
        ctx, ctxlen, 0);

 return rc == -EOPNOTSUPP ? 0 : rc;
}
