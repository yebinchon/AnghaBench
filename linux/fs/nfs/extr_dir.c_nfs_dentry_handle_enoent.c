
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_delete (struct dentry*) ;
 scalar_t__ simple_positive (struct dentry*) ;

__attribute__((used)) static void nfs_dentry_handle_enoent(struct dentry *dentry)
{
 if (simple_positive(dentry))
  d_delete(dentry);
}
