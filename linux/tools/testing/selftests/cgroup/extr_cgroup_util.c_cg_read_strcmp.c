
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cg_read (char const*,char const*,char*,size_t) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

int cg_read_strcmp(const char *cgroup, const char *control,
     const char *expected)
{
 size_t size;
 char *buf;
 int ret;


 if (!expected)
  size = 32;
 else
  size = strlen(expected) + 1;

 buf = malloc(size);
 if (!buf)
  return -1;

 if (cg_read(cgroup, control, buf, size)) {
  free(buf);
  return -1;
 }

 ret = strcmp(expected, buf);
 free(buf);
 return ret;
}
