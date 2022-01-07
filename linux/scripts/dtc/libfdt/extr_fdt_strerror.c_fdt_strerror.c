
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; } ;


 int FDT_ERRTABSIZE ;
 TYPE_1__* fdt_errtable ;

const char *fdt_strerror(int errval)
{
 if (errval > 0)
  return "<valid offset/length>";
 else if (errval == 0)
  return "<no error>";
 else if (errval > -FDT_ERRTABSIZE) {
  const char *s = fdt_errtable[-errval].str;

  if (s)
   return s;
 }

 return "<unknown error>";
}
