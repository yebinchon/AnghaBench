
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;



__attribute__((used)) static int vfs_dentry_acceptable(void *context, struct dentry *dentry)
{
 return 1;
}
