
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_entry {int dummy; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;


 int kfree_rcu (struct ovl_entry*,int ) ;
 int ovl_entry_stack_free (struct ovl_entry*) ;
 int rcu ;

__attribute__((used)) static void ovl_dentry_release(struct dentry *dentry)
{
 struct ovl_entry *oe = dentry->d_fsdata;

 if (oe) {
  ovl_entry_stack_free(oe);
  kfree_rcu(oe, rcu);
 }
}
