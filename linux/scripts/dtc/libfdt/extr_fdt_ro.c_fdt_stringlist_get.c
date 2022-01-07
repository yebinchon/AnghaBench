
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADVALUE ;
 int FDT_ERR_NOTFOUND ;
 char* fdt_getprop (void const*,int,char const*,int*) ;
 int strnlen (char const*,int) ;

const char *fdt_stringlist_get(const void *fdt, int nodeoffset,
          const char *property, int idx,
          int *lenp)
{
 const char *list, *end;
 int length;

 list = fdt_getprop(fdt, nodeoffset, property, &length);
 if (!list) {
  if (lenp)
   *lenp = length;

  return ((void*)0);
 }

 end = list + length;

 while (list < end) {
  length = strnlen(list, end - list) + 1;


  if (list + length > end) {
   if (lenp)
    *lenp = -FDT_ERR_BADVALUE;

   return ((void*)0);
  }

  if (idx == 0) {
   if (lenp)
    *lenp = length - 1;

   return list;
  }

  list += length;
  idx--;
 }

 if (lenp)
  *lenp = -FDT_ERR_NOTFOUND;

 return ((void*)0);
}
