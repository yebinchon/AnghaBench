
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int call_int_hook (int ,int ,struct dentry*,int,struct qstr const*,void**,int *) ;
 int dentry_init_security ;

int security_dentry_init_security(struct dentry *dentry, int mode,
     const struct qstr *name, void **ctx,
     u32 *ctxlen)
{
 return call_int_hook(dentry_init_security, -EOPNOTSUPP, dentry, mode,
    name, ctx, ctxlen);
}
