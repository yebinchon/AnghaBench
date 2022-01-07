
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_export {int dummy; } ;
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 int IS_ROOT (struct dentry*) ;
 int PTR_ERR (struct svc_export*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct svc_export* rqst_exp_get_by_name (struct svc_rqst*,struct path*) ;

struct svc_export *
rqst_exp_parent(struct svc_rqst *rqstp, struct path *path)
{
 struct dentry *saved = dget(path->dentry);
 struct svc_export *exp = rqst_exp_get_by_name(rqstp, path);

 while (PTR_ERR(exp) == -ENOENT && !IS_ROOT(path->dentry)) {
  struct dentry *parent = dget_parent(path->dentry);
  dput(path->dentry);
  path->dentry = parent;
  exp = rqst_exp_get_by_name(rqstp, path);
 }
 dput(path->dentry);
 path->dentry = saved;
 return exp;
}
