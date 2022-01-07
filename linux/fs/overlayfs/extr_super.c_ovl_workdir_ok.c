
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int * lock_rename (struct dentry*,struct dentry*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

__attribute__((used)) static bool ovl_workdir_ok(struct dentry *workdir, struct dentry *upperdir)
{
 bool ok = 0;

 if (workdir != upperdir) {
  ok = (lock_rename(workdir, upperdir) == ((void*)0));
  unlock_rename(workdir, upperdir);
 }
 return ok;
}
