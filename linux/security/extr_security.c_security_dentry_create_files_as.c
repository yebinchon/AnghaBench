
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct dentry*,int,struct qstr*,struct cred const*,struct cred*) ;
 int dentry_create_files_as ;

int security_dentry_create_files_as(struct dentry *dentry, int mode,
        struct qstr *name,
        const struct cred *old, struct cred *new)
{
 return call_int_hook(dentry_create_files_as, 0, dentry, mode,
    name, old, new);
}
