
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int AT_FDCWD ;
 int filename_lookup (int ,int ,unsigned int,struct path*,int *) ;
 int getname_kernel (char const*) ;

int kern_path(const char *name, unsigned int flags, struct path *path)
{
 return filename_lookup(AT_FDCWD, getname_kernel(name),
          flags, path, ((void*)0));
}
