
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; int mnt; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct aa_ns {int dummy; } ;


 int ECHILD ;
 char const* ERR_PTR (int ) ;
 struct aa_ns* aa_get_current_ns () ;
 int aa_put_ns (struct aa_ns*) ;
 int aafs_mnt ;
 int dget (int ) ;
 int mntget (int ) ;
 int nd_jump_link (struct path*) ;
 int ns_dir (struct aa_ns*) ;

__attribute__((used)) static const char *policy_get_link(struct dentry *dentry,
       struct inode *inode,
       struct delayed_call *done)
{
 struct aa_ns *ns;
 struct path path;

 if (!dentry)
  return ERR_PTR(-ECHILD);
 ns = aa_get_current_ns();
 path.mnt = mntget(aafs_mnt);
 path.dentry = dget(ns_dir(ns));
 nd_jump_link(&path);
 aa_put_ns(ns);

 return ((void*)0);
}
