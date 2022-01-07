
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ ARRAY_SIZE (scalar_t__) ;
 struct dentry* proc_pident_lookup (struct inode*,struct dentry*,scalar_t__,scalar_t__) ;
 scalar_t__ tid_base_stuff ;

__attribute__((used)) static struct dentry *proc_tid_base_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 return proc_pident_lookup(dir, dentry,
      tid_base_stuff,
      tid_base_stuff + ARRAY_SIZE(tid_base_stuff));
}
