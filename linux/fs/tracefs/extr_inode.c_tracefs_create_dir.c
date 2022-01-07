
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* __create_dir (char const*,struct dentry*,int *) ;
 int simple_dir_inode_operations ;

struct dentry *tracefs_create_dir(const char *name, struct dentry *parent)
{
 return __create_dir(name, parent, &simple_dir_inode_operations);
}
