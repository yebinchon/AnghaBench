
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int len; } ;
struct dentry {int d_lock; int d_parent; TYPE_1__ d_name; } ;


 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int EXDEV ;
 int GFP_KERNEL ;
 int IS_ROOT (struct dentry*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_dlock (int ) ;
 int dput (struct dentry*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 char* kstrdup (char*,int ) ;
 char* kstrndup (char*,int,int ) ;
 int memcpy (char*,char const*,int) ;
 char* ovl_dentry_get_redirect (struct dentry*) ;
 int ovl_redirect_max ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static char *ovl_get_redirect(struct dentry *dentry, bool abs_redirect)
{
 char *buf, *ret;
 struct dentry *d, *tmp;
 int buflen = ovl_redirect_max + 1;

 if (!abs_redirect) {
  ret = kstrndup(dentry->d_name.name, dentry->d_name.len,
          GFP_KERNEL);
  goto out;
 }

 buf = ret = kmalloc(buflen, GFP_KERNEL);
 if (!buf)
  goto out;

 buflen--;
 buf[buflen] = '\0';
 for (d = dget(dentry); !IS_ROOT(d);) {
  const char *name;
  int thislen;

  spin_lock(&d->d_lock);
  name = ovl_dentry_get_redirect(d);
  if (name) {
   thislen = strlen(name);
  } else {
   name = d->d_name.name;
   thislen = d->d_name.len;
  }


  if (thislen + (name[0] != '/') > buflen) {
   ret = ERR_PTR(-EXDEV);
   spin_unlock(&d->d_lock);
   goto out_put;
  }

  buflen -= thislen;
  memcpy(&buf[buflen], name, thislen);
  tmp = dget_dlock(d->d_parent);
  spin_unlock(&d->d_lock);

  dput(d);
  d = tmp;


  if (buf[buflen] == '/')
   break;
  buflen--;
  buf[buflen] = '/';
 }
 ret = kstrdup(&buf[buflen], GFP_KERNEL);
out_put:
 dput(d);
 kfree(buf);
out:
 return ret ? ret : ERR_PTR(-ENOMEM);
}
