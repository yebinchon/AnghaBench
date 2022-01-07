
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,char const*) ;

void *do_nofail(void *ptr, const char *expr)
{
 if (!ptr)
  fatal("modpost: Memory allocation failure: %s.\n", expr);

 return ptr;
}
