
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;


 int decompress_kmodule (struct dso*,char const*,int *,int ) ;

int dso__decompress_kmodule_fd(struct dso *dso, const char *name)
{
 return decompress_kmodule(dso, name, ((void*)0), 0);
}
