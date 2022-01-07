
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_cu_creds {int * new; int old; } ;
struct dentry {int dummy; } ;


 int override_creds (int *) ;
 int security_inode_copy_up (struct dentry*,int **) ;

__attribute__((used)) static int ovl_prep_cu_creds(struct dentry *dentry, struct ovl_cu_creds *cc)
{
 int err;

 cc->old = cc->new = ((void*)0);
 err = security_inode_copy_up(dentry, &cc->new);
 if (err < 0)
  return err;

 if (cc->new)
  cc->old = override_creds(cc->new);

 return 0;
}
