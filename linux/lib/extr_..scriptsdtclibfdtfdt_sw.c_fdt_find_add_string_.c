
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_add_string_ (void*,char const*) ;
 char* fdt_find_string_ (char*,int,char const*) ;
 int fdt_size_dt_strings (void*) ;
 int fdt_totalsize (void*) ;

__attribute__((used)) static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
{
 char *strtab = (char *)fdt + fdt_totalsize(fdt);
 int strtabsize = fdt_size_dt_strings(fdt);
 const char *p;

 *allocated = 0;

 p = fdt_find_string_(strtab - strtabsize, strtabsize, s);
 if (p)
  return p - strtab;

 *allocated = 1;

 return fdt_add_string_(fdt, s);
}
