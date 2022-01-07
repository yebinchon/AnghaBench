
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int E2BIG ;
 int ECHILD ;
 int ENOMEM ;
 char const* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PATH_MAX ;
 int __putname (char*) ;
 char* dentry_name (struct dentry*) ;
 int hostfs_do_readlink (char*,char*,int) ;
 int kfree (char*) ;
 int kfree_link ;
 char* kmalloc (int,int ) ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;

__attribute__((used)) static const char *hostfs_get_link(struct dentry *dentry,
       struct inode *inode,
       struct delayed_call *done)
{
 char *link;
 if (!dentry)
  return ERR_PTR(-ECHILD);
 link = kmalloc(PATH_MAX, GFP_KERNEL);
 if (link) {
  char *path = dentry_name(dentry);
  int err = -ENOMEM;
  if (path) {
   err = hostfs_do_readlink(path, link, PATH_MAX);
   if (err == PATH_MAX)
    err = -E2BIG;
   __putname(path);
  }
  if (err < 0) {
   kfree(link);
   return ERR_PTR(err);
  }
 } else {
  return ERR_PTR(-ENOMEM);
 }

 set_delayed_call(done, kfree_link, link);
 return link;
}
