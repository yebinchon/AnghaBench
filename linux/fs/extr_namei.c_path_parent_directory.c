
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int path_connected (struct path*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int path_parent_directory(struct path *path)
{
 struct dentry *old = path->dentry;

 path->dentry = dget_parent(path->dentry);
 dput(old);
 if (unlikely(!path_connected(path)))
  return -ENOENT;
 return 0;
}
