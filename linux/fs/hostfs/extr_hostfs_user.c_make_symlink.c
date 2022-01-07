
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int symlink (char const*,char const*) ;

int make_symlink(const char *from, const char *to)
{
 int err;

 err = symlink(to, from);
 if (err)
  return -errno;
 return 0;
}
