
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* filename_create (int,int ,struct path*,unsigned int) ;
 int getname_kernel (char const*) ;

struct dentry *kern_path_create(int dfd, const char *pathname,
    struct path *path, unsigned int lookup_flags)
{
 return filename_create(dfd, getname_kernel(pathname),
    path, lookup_flags);
}
