
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int link (char const*,char const*) ;

int link_file(const char *to, const char *from)
{
 int err;

 err = link(to, from);
 if (err)
  return -errno;
 return 0;
}
