
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int filename_mountpoint (int,int ,struct path*,unsigned int) ;
 int getname_kernel (char const*) ;

int
kern_path_mountpoint(int dfd, const char *name, struct path *path,
   unsigned int flags)
{
 return filename_mountpoint(dfd, getname_kernel(name), path, flags);
}
