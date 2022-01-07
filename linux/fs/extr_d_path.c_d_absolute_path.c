
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int EINVAL ;
 char* ERR_PTR (int) ;
 int prepend (char**,int*,char*,int) ;
 int prepend_path (struct path const*,struct path*,char**,int*) ;

char *d_absolute_path(const struct path *path,
        char *buf, int buflen)
{
 struct path root = {};
 char *res = buf + buflen;
 int error;

 prepend(&res, &buflen, "\0", 1);
 error = prepend_path(path, &root, &res, &buflen);

 if (error > 1)
  error = -EINVAL;
 if (error < 0)
  return ERR_PTR(error);
 return res;
}
