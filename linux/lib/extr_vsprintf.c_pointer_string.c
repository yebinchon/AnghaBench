
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int base; int field_width; int flags; } ;
typedef int ptr ;


 int SMALL ;
 int ZEROPAD ;
 char* number (char*,char*,unsigned long,struct printf_spec) ;

__attribute__((used)) static char *pointer_string(char *buf, char *end,
       const void *ptr,
       struct printf_spec spec)
{
 spec.base = 16;
 spec.flags |= SMALL;
 if (spec.field_width == -1) {
  spec.field_width = 2 * sizeof(ptr);
  spec.flags |= ZEROPAD;
 }

 return number(buf, end, (unsigned long int)ptr, spec);
}
