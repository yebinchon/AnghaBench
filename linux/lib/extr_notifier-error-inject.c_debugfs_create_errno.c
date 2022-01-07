
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,int*,int *) ;
 int fops_errno ;

__attribute__((used)) static struct dentry *debugfs_create_errno(const char *name, umode_t mode,
    struct dentry *parent, int *value)
{
 return debugfs_create_file(name, mode, parent, value, &fops_errno);
}
