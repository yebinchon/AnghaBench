
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;


 int close (int) ;
 int decompress_kmodule (struct dso*,char const*,char*,size_t) ;

int dso__decompress_kmodule_path(struct dso *dso, const char *name,
     char *pathname, size_t len)
{
 int fd = decompress_kmodule(dso, name, pathname, len);

 close(fd);
 return fd >= 0 ? 0 : -1;
}
