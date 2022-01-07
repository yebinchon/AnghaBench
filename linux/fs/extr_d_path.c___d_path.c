
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 char* ERR_PTR (int) ;
 int prepend (char**,int*,char*,int) ;
 int prepend_path (struct path const*,struct path const*,char**,int*) ;

char *__d_path(const struct path *path,
        const struct path *root,
        char *buf, int buflen)
{
 char *res = buf + buflen;
 int error;

 prepend(&res, &buflen, "\0", 1);
 error = prepend_path(path, root, &res, &buflen);

 if (error < 0)
  return ERR_PTR(error);
 if (error > 0)
  return ((void*)0);
 return res;
}
