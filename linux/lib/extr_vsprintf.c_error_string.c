
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int precision; } ;


 char* string_nocheck (char*,char*,char const*,struct printf_spec) ;

__attribute__((used)) static char *error_string(char *buf, char *end, const char *s,
     struct printf_spec spec)
{





 if (spec.precision == -1)
  spec.precision = 2 * sizeof(void *);

 return string_nocheck(buf, end, s, spec);
}
