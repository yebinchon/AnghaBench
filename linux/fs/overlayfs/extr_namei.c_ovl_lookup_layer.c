
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char* name; } ;
struct ovl_lookup_data {TYPE_1__ name; } ;
struct dentry {int dummy; } ;


 int EIO ;
 int IS_ERR_OR_NULL (struct dentry*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ d_can_lookup (struct dentry*) ;
 int dput (struct dentry*) ;
 int ovl_lookup_single (struct dentry*,struct ovl_lookup_data*,char const*,size_t,int,char const*,struct dentry**) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static int ovl_lookup_layer(struct dentry *base, struct ovl_lookup_data *d,
       struct dentry **ret)
{

 size_t rem = d->name.len - 1;
 struct dentry *dentry = ((void*)0);
 int err;

 if (d->name.name[0] != '/')
  return ovl_lookup_single(base, d, d->name.name, d->name.len,
      0, "", ret);

 while (!IS_ERR_OR_NULL(base) && d_can_lookup(base)) {
  const char *s = d->name.name + d->name.len - rem;
  const char *next = strchrnul(s, '/');
  size_t thislen = next - s;
  bool end = !next[0];


  if (WARN_ON(s[-1] != '/'))
   return -EIO;

  err = ovl_lookup_single(base, d, s, thislen,
     d->name.len - rem, next, &base);
  dput(dentry);
  if (err)
   return err;
  dentry = base;
  if (end)
   break;

  rem -= thislen + 1;

  if (WARN_ON(rem >= d->name.len))
   return -EIO;
 }
 *ret = dentry;
 return 0;
}
