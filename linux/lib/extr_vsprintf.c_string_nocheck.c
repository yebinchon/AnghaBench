
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int precision; } ;


 char* widen_string (char*,int,char*,struct printf_spec) ;

__attribute__((used)) static char *string_nocheck(char *buf, char *end, const char *s,
       struct printf_spec spec)
{
 int len = 0;
 int lim = spec.precision;

 while (lim--) {
  char c = *s++;
  if (!c)
   break;
  if (buf < end)
   *buf = c;
  ++buf;
  ++len;
 }
 return widen_string(buf, len, end, spec);
}
