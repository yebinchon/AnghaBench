
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int ECHILD ;
 int ENOMEM ;
 char const* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int kernfs_getlink (struct inode*,char*) ;
 int kfree (char*) ;
 int kfree_link ;
 char* kzalloc (int ,int ) ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *kernfs_iop_get_link(struct dentry *dentry,
           struct inode *inode,
           struct delayed_call *done)
{
 char *body;
 int error;

 if (!dentry)
  return ERR_PTR(-ECHILD);
 body = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!body)
  return ERR_PTR(-ENOMEM);
 error = kernfs_getlink(inode, body);
 if (unlikely(error < 0)) {
  kfree(body);
  return ERR_PTR(error);
 }
 set_delayed_call(done, kfree_link, body);
 return body;
}
