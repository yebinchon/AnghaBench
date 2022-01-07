
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int ENOENT ;
 char* ERR_PTR (int ) ;
 int IS_ERR (char const*) ;
 int clear_delayed_call (struct delayed_call*) ;
 int do_delayed_call (struct delayed_call*) ;
 char* page_get_link (struct dentry*,struct inode*,struct delayed_call*) ;

__attribute__((used)) static const char *f2fs_get_link(struct dentry *dentry,
     struct inode *inode,
     struct delayed_call *done)
{
 const char *link = page_get_link(dentry, inode, done);
 if (!IS_ERR(link) && !*link) {

  do_delayed_call(done);
  clear_delayed_call(done);
  link = ERR_PTR(-ENOENT);
 }
 return link;
}
