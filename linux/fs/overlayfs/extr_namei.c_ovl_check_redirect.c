
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int len; } ;
struct ovl_lookup_data {int stop; char* redirect; TYPE_1__ name; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (char*) ;
 int PTR_ERR (char*) ;
 int kfree (char*) ;
 int memcpy (char*,char*,size_t) ;
 int memmove (char*,char*,int) ;
 char* ovl_get_redirect_xattr (struct dentry*,size_t) ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int ovl_check_redirect(struct dentry *dentry, struct ovl_lookup_data *d,
         size_t prelen, const char *post)
{
 int res;
 char *buf;

 buf = ovl_get_redirect_xattr(dentry, prelen + strlen(post));
 if (IS_ERR_OR_NULL(buf))
  return PTR_ERR(buf);

 if (buf[0] == '/') {
  d->stop = 0;
 } else {
  res = strlen(buf) + 1;
  memmove(buf + prelen, buf, res);
  memcpy(buf, d->name.name, prelen);
 }

 strcat(buf, post);
 kfree(d->redirect);
 d->redirect = buf;
 d->name.name = d->redirect;
 d->name.len = strlen(d->redirect);

 return 0;
}
